require_relative( './models/vets.rb' )
require_relative( './models/animals.rb' )
require( 'pry' )

animal1 = Animal.new({
  'name' => 'Willow',
  'dob' => '17/06/2011',
  'type' => 'cat',
  'owner_contact_no' => '01654970751'
})

animal2 = Animal.new({
  'name' => 'Bonnie',
  'dob' => '18/04/2017',
  'type' => 'dog',
  'owner_contact_no' => '01567332109'
})

vet1 = Vet.new({
  'vet_name' => 'Alfred Butcher',
  'practice_no' => '04'
})

vet2 = Vet.new({
  'vet_name' => 'Jane McTavish',
  practice_no => '02'
})  
