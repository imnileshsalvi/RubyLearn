require_relative 'player'

describe Player do
  
  context 'common methods' do
    player=Player.new("larry")

    it "has a capitalized name" do
      player.name.should=="Larry"
    end
    it "has an initial health" do
      player.health.should==100
    end
    it "has a string representation" do
      player.to_s.should=="Larry has a health of 100"
    end
    it "computes a score as the sum of its health and length of name" do
      player.score.should==105
    end
    
  end
  
  context 'w00t and blam' do
    before do
      @initial_health=100
      @player=Player.new("larry",@initial_health)
    end

    it "increases health by 15 when w00ted" do
      @player.w00t
      @player.health.should==@initial_health+15
      @initial_health=@player.health
    end
    it "decreases health by 10 when blammed" do
      @player.blam
      @player.health.should==@initial_health-10
    end
    
  end

end
