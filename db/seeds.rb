require_relative( '../models/vet.rb' )
require_relative( '../models/animal.rb' )
require( 'pry' )

Vet.delete_all()
Animal.delete_all()

animal1 = Animal.new({
  'name' => 'Willow',
  'dob' => '17/06/2011',
  'type' => 'cat',
  'owner_contact_no' => '01654970751'
})
animal1.save()

animal2 = Animal.new({
  'name' => 'Bonnie',
  'dob' => '18/04/2017',
  'type' => 'dog',
  'owner_contact_no' => '01567332109'
})
animal2.save()

animal3 = Animal.new({
  'name' => 'Gemma',
  'dob' => '14/07/2015',
  'type' => 'dog',
  'owner_contact_no' => '09988776655'
})
animal3.save()

animal4 = Animal.new({
  'name' => 'Daisy',
  'dob' => '04/03/2017',
  'type' => 'cow',
  'owner_contact_no' => '00983214565'
})
animal4.save()

animal5 = Animal.new({
  'name' => 'Firefly',
  'dob' => '05/12/2014',
  'type' => 'horse',
  'owner_contact_no' => '03878325345'
})
animal5.save()

animal6 = Animal.new({
  'name' => 'Sid',
  'dob' => '14/01/2007',
  'type' => 'snake',
  'owner_contact_no' => '02953214760'
})
animal6.save()

animal7 = Animal.new({
  'name' => 'Frank',
  'dob' => '19/11/2018',
  'type' => 'Tortoise',
  'owner_contact_no' => '08457234729'
})
animal7.save()

animal8 = Animal.new({
  'name' => 'Manny',
  'dob' => '24/05/2013',
  'type' => 'cat',
  'owner_contact_no' => '07956212467'
})
animal8.save()



vet1 = Vet.new({
  'vet_name' => 'Alfred Butcher',
  'practice_no' => '01'
})
vet1.save()

vet2 = Vet.new({
  'vet_name' => 'Jane McTavish',
  'practice_no' => '02'
})
vet2.save()

vet3 = Vet.new({
  'vet_name' => 'Severus Tich',
  'practice_no' => '03'
  })
vet3.save()

vet4 = Vet.new({
  'vet_name' => 'Babs Fielding',
  'practice_no' => '01'
  })
vet4.save()

vet5 = Vet.new({
  'vet_name' => 'Rhonda Robertson',
  'practice_no' => '02'
})
vet5.save()

vet6 = Vet.new({
  'vet_name' => 'Herrman Pinscher',
  'practice_no' => '03'
})
vet6.save()



binding.pry
#

nil
