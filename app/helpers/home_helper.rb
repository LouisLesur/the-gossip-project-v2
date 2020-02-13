module HomeHelper

  def generator
    @all_gossip = Gossip.all
    @result = rand(Gossip.first.id..Gossip.last.id)
    @all_gossip.map do |gossip|
      if gossip.id == @result
        return @result
      end
    end
  end
end
