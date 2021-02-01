require 'Gossip'

class ApplicationController < Sinatra::Base
  
  get '/' do
    erb :index 
  end
  
  get '/gossip/new/' do
    erb :new_gossip
  end
  
  post '/gossip/new/potin/' do
    Gossip.new.save
  end
end
