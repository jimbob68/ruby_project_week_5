require( 'sinatra' )
require( 'sinatra/contrib/all' ) if development?
require_relative( 'controllers/owners_controller.rb' )
require_relative( 'controllers/animals_controller.rb' )
require_relative( 'controllers/vets_controller.rb' )

also_reload('./models/*')



get '/' do
  erb(:home)
end



# get '../animals/index' do
#   erb( :index )
# end
# get '/animals/index/?' do
#   @animals = Animal.all
#   erb(:"animals/index")
# end
# get '/animals/new/?' do
#   Animal.new(params).save
#   erb(:"animals/new")
# end
#
# get '/animals/show/?' do
#   erb(:"animals/show")
# end
#

#
# get '/owners/index/?' do
#   erb( :"owners/index" )
# end
#
# get '/owners/show/?' do
#   erb( :"owners/show" )
# end
# # get '/vets/index/' do
#   "Hello World"
# end
