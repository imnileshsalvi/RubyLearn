class Player
  attr_reader :name, :health
  def initialize (name, health=100)
    @name=name.capitalize
    @health=health
  end
  def to_s
    "#{@name} has a health of #{@health}"
  end
  def score
    @name.length+@health
  end
  def w00t
    @health+=15
  end
  def blam
    @health-=10
  end
end