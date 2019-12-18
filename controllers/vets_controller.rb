require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry' )
require_relative( '../models/vet.rb' )
also_reload( '../models/*' )


get '/vets/home/?' do
  erb( :"vets/home" )
end

get '/vets/index/?' do
  @vets = Vet.all()
  erb( :"vets/index" )
end

get '/vets/new/?' do
  # Vet.new(params).save
  erb(:"vets/new")
end

get '/vets/:id/?' do
  @vet = Vet.find(params['id'])
  erb(:"vets/show")
end

post '/vets/new' do
  Vet.new(params).save
  redirect to '/vets/new'
end

# post '/vets/new' do
#   "Hello World"
# end
#
# post '/vets/vets/new' do
#   "Hello World"
# end
