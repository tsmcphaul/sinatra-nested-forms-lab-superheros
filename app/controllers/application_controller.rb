require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :super_hero
    end

    post '/teams' do
    @team = Team.new(params[:team])
    Hero.new(params[:team][:hero][0])
    Hero.new(params[:team][:hero][1])
    Hero.new(params[:team][:hero][2])
    @heroes = Hero.all
      erb :team
       end

end
