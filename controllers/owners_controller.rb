require( 'sinatra' )
require( 'sinatra/contrib/all' ) if development?
require_relative( '../models/owner.rb' )
# also_reload( '../models/*' )

get '/owners' do
  @owners = Owner.all()
  erb( :"owners/index")
end

get '/owners/:id' do
  @owner = Owner.find(params[:id])
  erb(:"owners/show")
end
