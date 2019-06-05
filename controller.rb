require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )

require_relative( './models/game' )
also_reload('./moldels')

get '/:choice1/:choice2' do
  game = Game.new( params[:choice1], params[:choice2])
  @comparison = game.compare()
  erb( :result )
end

get '/welcome' do
  erb( :welcome )
end
