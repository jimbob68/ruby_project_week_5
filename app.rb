require( 'sinatra' )
require( 'sinatra/contrib/all' ) if development?
# require_relative( 'controllers/vets_controller.rb' )
# require_relative( 'controllers/animals_controller.rb' )


get '/index' do
  erb( :index )
end

get '/show' do
  erb( :show )
end
