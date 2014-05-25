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
  
  context 'player strength' do
    before do
      @strong=126
      @strong_player=Player.new("larry",@strong)
      @weak=74
      @weak_player=Player.new("larry",@weak)
      @avg_low=75
      @avg_low_player=Player.new("larry",@avg_low)
      @avg_high=125
      @avg_high_player=Player.new("larry",@avg_high)
    end
    it "strength > 125 is a strong player" do
      @strong_player.strong?.should==true
    end    
    it "strength < 75 is a weak player" do
      @weak_player.weak?.should==true
    end
    it "strength between 75 and 125 is neither weak nor a strong player" do
      @avg_low_player.weak?.should==false
      @avg_high_player.strong?.should==false
    end
  end

end
