require( 'sinatra' )
require( 'sinatra/contrib/all' ) if development?
require_relative( 'controllers/owners_controller.rb' )
require_relative( 'controllers/animals_controller.rb' )
require_relative( 'controllers/vets_controller.rb' )

# also_reload('./models/*')



get '/' do
  erb(:home)
end
