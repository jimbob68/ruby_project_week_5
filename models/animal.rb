  require_relative( '../db/sql_runner.rb' )

class Animal

 attr_reader :id
  attr_accessor :name, :dob, :type, :treatment_notes, :vet_id

 def initialize( options )
   @id = options['id'].to_i if options['id']
   @name = options['name']
   @dob = options['dob'].to_s
   @type = options['type']
   @treatment_notes = options['treatment_notes']
   @vet_id = options['vet_id'].to_i
  end

  def save()
    sql = "INSERT INTO animals (
    name,
    dob,
    type,
    treatment_notes,
    vet_id
    ) VALUES(
      $1, $2, $3, $4, $5
    ) RETURNING id
    "
    values = [@name, @dob, @type,  @treatment_notes, @vet_id]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end

  def update()
    sql = "UPDATE animals SET
    (
       name,
       dob,
       type,
       treatment_notes,
       vet_id
      ) = (
        $1, $2, $3, $4, $5
      ) WHERE id = $6"
      values = [@name, @dob, @type,  @treatment_notes, @vet_id, @id]
      SqlRunner.run(sql, values)
  end

  def owners
    sql = "SELECT owner.* FROM owners WHERE id = $1"
    values = [@id]
    results = SqlRunner.run(sql, values)
    return results.map{ |owner|Owner.new(owner)}
  end

  def vets
    sql = "SELECT vet.* FROM vets WHERE id = $1"
    values = [@id]
    results = SqlRunner.run(sql, values)
    return results.map { |vet|Vet.new(vet)}
  end

  def delete()
    sql = "DELETE FROM animals WHERE id = $1"
    values = [@id]
    results = SqlRunner.run(sql, values)
  end

  def self.all()
    sql = "SELECT * FROM animals;"
    results = SqlRunner.run(sql)
    return results.map{ |animal| Animal.new(animal) }
  end

  def self.delete_all()
    sql = "DELETE FROM animals;"
    SqlRunner.run(sql)
  end

 def self.find(id)
   sql = "SELECT * FROM animals WHERE id = $1"
   values = [id]
   results = SqlRunner.run(sql, values)
   animal_hash = results[0]
   animal = Animal.new(animal_hash)
   return animal
  end

end
