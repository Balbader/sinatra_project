require 'gossip'

class ApplicationController < Sinatra::Base
  
  get '/' do
    erb :index, locals: {gossips: Gossip.all} 
  end
  
  get '/gossip/new/' do
    erb :new_gossip
  end
  
  post '/gossip/new/' do
    Gossip.new(params[:author],params[:content]).save
    redirect '/'
  end

  get '/gossip/:id' do
    erb :show, locals: {id: params['id'].to_i, gossips: Gossip.find(params['id'].to_i)}
  end  
end
