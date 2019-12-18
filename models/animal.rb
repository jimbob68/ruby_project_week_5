  require_relative( '../db/sql_runner.rb' )

class Animal

 attr_reader :id
  attr_accessor :name, :dob, :type, :owner_contact_no, :vet_id, :treatment_notes

 def initialize( options )
   @id = options['id'].to_i if options['id']
   @name = options['name']
   @dob = options['dob'].to_s
   @type = options['type']
   @owner_contact_no = options['owner_contact_no'].to_s
   @treatment_notes = options['treatment_notes']
   @vet_id = options['vet_id'].to_i
  end

  def save()
    sql = "INSERT INTO animals (
    name,
    dob,
    type,
    owner_contact_no,
    treatment_notes,
    vet_id
    ) VALUES(
      $1, $2, $3, $4, $5, $6
    ) RETURNING id
    "
    values = [@name, @dob, @type, @owner_contact_no, @treatment_notes, @vet_id]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end

  def update()
    sql = "UPDATE animals SET
    (
       name,
       dob,
       type,
       owner_contact_no,
       treatment_notes,
       vet_id
      ) = (
        $1, $2, $3, $4, $5, $6
      ) WHERE id = $7"
      values = [@name, @dob, @type, @owner_contact_no, @treatment_notes, @vet_id, @id]
      SqlRunner.run(sql, values)
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
