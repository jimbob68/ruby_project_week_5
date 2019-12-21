require_relative( '../db/sql_runner.rb' )

class Owner
  attr_reader :id
  attr_accessor :first_name,  :last_name, :address, :contact_no, :number_of_pets

  def initialize( options )
    @id = options['id'].to_i if options['id']
    @first_name = options['first_name']
    @last_name = options['last_name']
    @address = options['address'].to_s
    @contact_no = options['contact_no'].to_s
    @number_of_pets =     options['number_of_pets'].to_i
  end

  def save()
    sql = "INSERT INTO owners (
    first_name,
    last_name,
    address,
    contact_no,
    number_of_pets
  )
  VALUES
  (
    $1, $2, $3, $4, $5
  ) RETURNING id"
    values = [@first_name, @last_name, @address, @contact_no,   @number_of_pets]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end

  def update()
    sql = "UPDATE owners SET (
    first_name,
    last_name,
    address,
    contact_no,
    number_of_pets
    ) = (
    $1, $2, $3, $4, $5
    ) WHERE id = $6"
    values = [@first_name, @last_name,  @address, @contact_no,  @number_of_pets]
    SqlRunner.run(sql, values)
  end

  def animals
    sql = "SELECT animal.* FROM animals
    WHERE id = $1"
    values = [@id]
    results = SqlRunner.run(sql, values)
    return results.map{ |animal|Animal.new(animal)}
  end

  def vets
    sql = "SELECT vet.* FROM vets WHERE id = $1"
    values = [@id]
    results = SqlRunner.run(sql, values)
    return results.map{ |vet|Vet.new(vet)}
  end

  def delete()
    sql = "DELETE FROM owners WHERE id = $1"
    values = [@id]
    results = SqlRunner.run(sql, values)
  end

  def self.all()
    sql = "SELECT * FROM owners;"
    results = SqlRunner.run(sql)
    return results.map{   |owner|Owner.new(owner)}
  end

  def self.find(id)
    sql = "SELECT * FROM owners WHERE id = $1"
    values = [id]
    results = SqlRunner.run(sql, values)
    owner_hash = results[0]
    owner = Owner.new(owner_hash)
    return owner
  end

  def self.delete_all()
    sql = "DELETE FROM owners;"
    SqlRunner.run(sql)
  end

end
