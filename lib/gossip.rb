require 'csv'


class Gossip
  attr_accessor :author, :content

  def initialize(author, content)
    @content = content
    @author = author
  end
   
  def save
    CSV.open("./db/gossip.csv", "ab") do |csv|
      csv << [@author, @content]
    end
  end

  def self.all
    all_gossips = Array.new
    CSV.read("./db/gossip.csv").each do |i|
      gossip_temp = Gossip.new(i[0],i[1])
      all_gossips << gossip_temp
    end
    return all_gossips
  end

  def self.find(id)
    gossips = Array.new
    CSV.read("./db/gossip.csv").each_with_index do |j, i|
      if (id == i + 1)
        gossips << Gossip.new(j[0], j[1])
        break
      end
    end
    return gossips
  end

end
