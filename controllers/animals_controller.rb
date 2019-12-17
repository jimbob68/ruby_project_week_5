require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry' )
require_relative( '../models/animal.rb' )
also_reload( '../models/*' )

get '/animals/?' do
  @animals = Animal.all()
  erb( :"animals/index")
end


# get '/animals/index/?' do
#   erb(:"animals/index")
# end

get '/animals/new/?' do
  erb (:"animals/new")
end

get '/animals/show/?' do
   erb (:"animals/show")
end
