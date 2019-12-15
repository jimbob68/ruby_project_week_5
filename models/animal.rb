  require_relative( '../db/sql_runner.rb' )

class Animal

 attr_reader :id, :name, :dob, :type, :owner_contact_no

 def initialize( options )
   @id = options['id'].to_i if options['id']
   @name = options['name']
   @dob = options['dob'].to_s
   @type = options['type']
   @owner_contact_no = options['owner_contact_no'].to_s
  end

  def save()
    sql = "INSERT INTO animals (
    name,
    dob,
    type,
    owner_contact_no
    ) VALUES(
      $1, $2, $3, $4
    ) RETURNING id
    "
    values = [@name, @dob, @type, @owner_contact_no]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
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









end
