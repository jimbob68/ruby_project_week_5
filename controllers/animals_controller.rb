require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry' )
require_relative( '../models/animal.rb' )
also_reload( '../models/*' )

get '/animals' do
  @animals = Animal.all()
  erb( :"animals/index")
end

# post '/animals/new' do
#   @animal = Animal.new(params)
#   @animal.save
#   erb (:"animals/index")
# end

post '/animals' do
  animal = Animal.new(params)
  animal.save
  redirect to '/animals'
end

get '/animals/new' do
  @vets = Vet.all
  erb (:"animals/new")
end

get '/animals/:id' do
  @animal = Animal.find(params[:id])
   erb (:"animals/show")
end

post '/animals/:id/delete' do
  animal = Animal.find(params['id'])
  animal.delete
  redirect to '/animals'
end
