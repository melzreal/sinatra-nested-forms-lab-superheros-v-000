require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/team' do

    params[:team].each do |team|
      @team = Team.new(team)
    end

    @teams = Team.all

    params[:team][:members].each do |data|
      hero = Hero.new(data)
    end
    @heroes = Hero.all

      erb :team
    end

end
