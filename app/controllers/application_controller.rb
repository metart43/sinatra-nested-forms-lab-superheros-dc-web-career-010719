require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :team
    end

    post '/teams' do
      #binding.pry
    @team = Team.new(params[:team])
    params[:team][:members].each do |details|
      Hero.new(details)
    end

    @heroes = Hero.all

    erb :team_view
  end

end
