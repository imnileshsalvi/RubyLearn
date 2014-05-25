require_relative 'player'
module GameTurn
  def self.take_turn(p)
    roll=roll_die
    if roll < 3
      p.blam
    elsif roll > 4
      p.w00t
    end
  end  
  def self.roll_die
    rand(1..6)
  end
end