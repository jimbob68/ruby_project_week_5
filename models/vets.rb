require_relative( '../db/sql_runner.rb' )

class Vet


  attr_reader :id, :vet_name, :practice_no

def initialize( options )
  @id = options['id'].to_i
  @vet_name options['vet_name']
  @practice_no options['practice_no'].to_i
end

def save()
  sql = "INSERT INTO vets (
  @vet_name,
  @practice_no
  ) VALUES (
    $1, $2
    ) RETURNING id"
    sql = [@vet_name, @practice_no]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i

end




end
