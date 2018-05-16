require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here

    get "/" do
    	"Welcome to the Nested Forms Lab! \n let's navigate to the '/new'"
    end

    get "/new" do
    	erb :"pirates/new"
    end

    post "/pirates" do
        @pirate = Pirate.new(params[:pirate][:name], params[:pirate][:weight], params[:pirate][:height])
        @ships = params[:pirate][:ships].map do |ship|
            Ship.new(ship[:name], ship[:type], ship[:booty])
        end
    	erb :"pirates/show"
    end
  end
end