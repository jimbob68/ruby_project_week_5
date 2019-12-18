  require_relative( '../db/sql_runner.rb' )

class Vet

  attr_reader :id
  attr_accessor :vet_name, :practice_no

  def initialize( options )
    @id = options['id'].to_i if options['id']
    @vet_name = options['vet_name']
    @practice_no = options['practice_no'].to_i
  end

  def save()
    sql = "INSERT INTO vets (
    vet_name,
    practice_no
    )
    VALUES
    (
      $1, $2
    ) RETURNING id"
    values = [@vet_name, @practice_no]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end

  def update()
    sql = "UPDATE vets
    SET (
    vet_name,
    practice_no
    ) = (
      $1, $2
    ) WHERE id = $3"
    values = [@vet_name, @practice_no]
    SqlRunner.run(sql, values)
  end

  def animals
    sql = "SELECT animal.* FROM animals WHERE id = $1"
    values = [@id]
    results = SqlRunner.run(sql, values)
    return results.map{ |animal|Animal.new(animal)}
  end

  def delete()
    sql = "DELETE FROM vets WHERE id = $1"
    values = [@id]
    results = SqlRunner.run(sql, values)
  end

  def self.all()
    sql = "SELECT * FROM vets;"
    results = SqlRunner.run(sql)
    return results.map{ |vet| Vet.new(vet) }
  end

  def self.find(id)
    sql = "SELECT * FROM vets WHERE id = $1"
    values = [id]
    results = SqlRunner.run(sql, values)
    vet_hash = results[0]
    vet = Vet.new(vet_hash)
    return vet
   end

  def self.delete_all()
    sql = "DELETE FROM vets;"
    SqlRunner.run(sql)
  end



end
