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
