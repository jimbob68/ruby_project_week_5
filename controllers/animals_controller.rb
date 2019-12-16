require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry' )
require_relative( '../models/animals.rb' )
also_reload( '../models/*' )


get '/' do
  erb(:home)
end

get '/about_us' do
  erb :about_us
end
