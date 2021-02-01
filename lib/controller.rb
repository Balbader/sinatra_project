require 'Gossip'

class ApplicationController < Sinatra::Base
  
  get '/' do
    erb :index 
  end
  
  get '/gossip/new/' do
    erb :new_gossip
  end
  
  post '/gossip/new/potin/' do
    Gossip.new(params[:author],params[:content]).save
  end

  post '/gossip/new/potin/' do
    puts "Salut, je suis dans le serveur"
    puts "Ceci est le contenu du hash params : #{params}"
    puts "Trop bien ! Et ceci est ce que l'utilisateur a passé dans le champ gossip_author : #{params["author"]}"
    puts "De la bombe, et du coup ça, ça doit être ce que l'utilisateur a passé dans le champ gossip_content : #{params["content"]}"
    puts "Ça déchire sa mémé, bon allez je m'en vais du serveur, ciao les BGs !"
  end
end
