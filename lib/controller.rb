require 'gossip'

class ApplicationController < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/gossip/new/' do
    erb :new_gossip
  end
  
  post '/gossips/new/' do
    Gossip.new(les_entree_du_gossip).save
  end

end
