require_relative 'game_turn'
class Game
  attr_reader :name, :players, :ntimes
  def initialize(name)
    @name=name.upcase
    @players=[]
    @ntimes=0
  end
  def to_s
    "#{@name} is a fun game."
  end
  def add_player(player)
    @players << player
  end
  def play(n)
    1.upto(n) do |round|
      if __FILE__==$0 then puts "Round #{round}: " end
      @players.each do |p|
        #let the game_maker decide the fate
        GameTurn.take_turn(p)
        if __FILE__==$0 then puts p end
        @ntimes=n
      end      
    end
    if __FILE__==$0 then puts "GAME OVER!!!" end
  end
end
if __FILE__ == $0
    @game = Game.new("Knuckleheads")
    @initial_health = 100
    @moe = Player.new("moe", @initial_health)
    @larry = Player.new("larry", @initial_health)
    puts @moe
    puts @larry
    @game.add_player(@moe)
    @game.add_player(@larry)
    puts "#{@game.name} has #{@game.players.size} players"
    @game.play(3)
    puts @moe
    puts @larry
end