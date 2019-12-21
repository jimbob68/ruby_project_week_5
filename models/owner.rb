require_relative( '../db/sql_runner.rb' )

Class owner
attr_reader :id
attr_accessor :first_name, :last_name, :address, :contact_no, :number_of_pets

def initialize( options )
  @id = options['id'].to_i if options['id']
  @first_name = options['first_name']
  @last_name = options['last_name']
  @address = options['address'].to_s
  @contact_no = options['contact_no'].to_s
  @number_of_pets = options['number_of_pets'].to_i
end





end
