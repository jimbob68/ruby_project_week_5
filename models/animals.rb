require_relative( '../db/sql_runner.rb' )


class Animal

 attr_reader

 def initialize( options )
   @id = options['id'].to_i if options['id']
   @name = options['name']
   @dob = options['dob'].to_i
   @type = options['type']
   @owner_contact_no = options['owner_contact_no'].to_i
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









end
