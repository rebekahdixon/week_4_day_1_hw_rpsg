require('sinatra')
require('sinatra/contrib/all') if development?

require_relative('./models/game')
also_reload('./models/*')

get '/result/:hand1/:hand2' do
  game = Game.new
     @game_result = game.check_win(params[:hand1], params[:hand2])
  erb (:result)
end

get '/home' do
  erb (:home)
end

get '/result' do
  erb (:result)
end
