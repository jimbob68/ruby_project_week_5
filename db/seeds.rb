require_relative( '../models/vet.rb' )
require_relative( '../models/animal.rb' )
require_relative( '../models/owner.rb' )
require( 'pry' )


Vet.delete_all()
Animal.delete_all()
Owner.delete_all()


vet1 = Vet.new({
  'first_name' => 'Alfred',
  'last_name' => 'Butcher',
  'practice_no' => '01'
})
vet1.save()

vet2 = Vet.new({
  'first_name' => 'Jane',
  'last_name' => 'McTavish',
  'practice_no' => '02'
})
vet2.save()

vet3 = Vet.new({
  'first_name' => 'Severus',
  'last_name' => 'Tich',
  'practice_no' => '03'
  })
vet3.save()

vet4 = Vet.new({
  'first_name' => 'Babs',
  'last_name' => 'Fielding',
  'practice_no' => '01'
  })
vet4.save()

vet5 = Vet.new({
  'first_name' => 'Rhonda',
  'last_name' => 'Robertson',
  'practice_no' => '02'
})
vet5.save()

vet6 = Vet.new({
  'first_name' => 'Herrman',
  'last_name' => 'Pinscher',
  'practice_no' => '03'
})
vet6.save()

animal1 = Animal.new({
  'name' => 'Willow',
  'dob' => '17/06/2011',
  'type' => 'cat',
  'treatment_notes' => 'spayed',
  'vet_id' => vet1.id
})
animal1.save()

animal2 = Animal.new({
  'name' => 'Bonnie',
  'dob' => '18/04/2017',
  'type' => 'dog',
  'treatment_notes' => 'flea treatment',
  'vet_id' => vet2.id
})
animal2.save()

animal3 = Animal.new({
  'name' => 'Gemma',
  'dob' => '14/07/2015',
  'type' => 'dog',
  'treatment_notes' => 'wormed',
  'vet_id' => vet3.id
})
animal3.save()

animal4 = Animal.new({
  'name' => 'Daisy',
  'dob' => '04/03/2017',
  'type' => 'cow',
  'treatment_notes' => 'udderectomy',
  'vet_id' => vet4                                .id
})
animal4.save()

animal5 = Animal.new({
  'name' => 'Firefly',
  'dob' => '05/12/2014',
  'type' => 'horse',
  'treatment_notes' => 'gelded',
  'vet_id' => vet5.id
})
animal5.save()

animal6 = Animal.new({
  'name' => 'Sid',
  'dob' => '14/01/2007',
  'type' => 'snake',
  'treatment_notes' => 'de-scale',
  'vet_id' => vet6.id
})
animal6.save()

animal7 = Animal.new({
  'name' => 'Frank',
  'dob' => '19/11/2018',
  'type' => 'Tortoise',
  'treatment_notes' => 'hibernation check',
  'vet_id' => vet1.id
})
animal7.save()

animal8 = Animal.new({
  'name' => 'Manny',
  'dob' => '24/05/2013',
  'type' => 'cat',
  'treatment_notes' => 'de-clawed',
  'vet_id' => vet2.id
})
animal8.save()

owner1 = Owner.new({
  'first_name' => 'Ruth',
  'last_name' => 'Fraser',
  'address' => '9 Goshen Crescent',
  'contact_no' => '07956212467',
  'number_of_pets' => '1'
})
owner1.save()

owner2 = Owner.new({
  'first_name' => 'Kyle',
  'last_name' => 'Caffrey',
  'address' => '40 Minto Place',
  'contact_no' => '08457234729',
  'number_of_pets' => '2'
})
owner2.save()

owner3 = Owner.new({
  'first_name' => 'Giles',
  'last_name' => 'Branner',
  'address' => '15 Broughton Road',
  'contact_no' => '02953214760',
  'number_of_pets' => '3'
})
owner3.save()

owner4 = Owner.new({
  'first_name' => 'Derek',
  'last_name' => 'Kelso',
  'address' => '18 Limpet Lane',
  'contact_no' => '03878325345',
  'number_of_pets' => '1'
})
owner4.save()

owner5 = Owner.new({
  'first_name' => 'Clarissa',
  'last_name' => 'Small',
  'address' => '76 Fortinghall Road',
  'contact_no' => '00983214565',
  'number_of_pets' => '3'
})
owner5.save()

owner6 = Owner.new({
  'first_name' => 'Ernst',
  'last_name' => 'Blofeld',
  'address' => ' 1 Spectre Street',
  'contact_no' => '09988776655',
  'number_of_pets' => '1'
})
owner6.save()

owner7 = Owner.new({
  'first_name' => 'Johnny',
  'last_name' => 'Diamond',
  'address' => '14 Oxford Street',
  'contact_no' => '01567332109',
  'number_of_pets' => '2'
})
owner7.save()

owner8 = Owner.new({
  'first_name' => 'Jon',
  'last_name' => 'Arbuckle',
  'address' => 'Cat Nip Avenue',
  'contact_no' => '01654970751',
  'number_of_pets' => '2'
})
owner8.save()


binding.pry
nil
