  require_relative( '../db/sql_runner.rb' )

class Vet

  attr_reader :id, :vet_name, :practice_no

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

  def self.delete_all()
    sql = "DELETE FROM vets;"
    SqlRunner.run(sql)
  end



end
