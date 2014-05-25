require_relative 'player'
class Game
  attr_reader :name, :players
  def initialize(name)
    @name=name.upcase
    @players=[]
  end
  def to_s
    "#{@name} is a fun game."
  end
  def add_player(player)
    @players << player
  end
  def play
    @players.each do |p|
      roll=roll_die
      if roll < 3
        p.blam
      elsif roll > 4
        p.w00t
      end
    end
  end
  def roll_die
    rand(1..6)
  end
end
if __FILE__ == $0
    @game = Game.new("Knuckleheads")
    @initial_health = 100
    @moe = Player.new("moe", @initial_health)
    @larry = Player.new("larry", @initial_health)
    @game.add_player(@moe)
    @game.add_player(@larry)
    puts "#{@game.name} has #{@game.players.size} players"
    @game.play
end