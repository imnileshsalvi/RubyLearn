require_relative 'game'

describe Game do

  before do
    @game = Game.new("Knuckleheads")
  end
  it "has a string representation" do
    @game.to_s.should=="KNUCKLEHEADS is a fun game."
  end
  it "can add players" do
    @initial_health = 100
    @player = Player.new("moe", @initial_health)
    @game.players.size.should==0
    @game.add_player(@player)
    @game.players.size.should==1
  end
  it "plays the game - high roll" do
    @initial_health = 100
    @player = Player.new("moe", @initial_health)
    @game.add_player(@player)
    GameTurn.stub(:roll_die).and_return(5)
    @game.play(1) #
    @player.health.should==115
  end
  it "plays the game - low roll" do
    @initial_health = 100
    @player = Player.new("moe", @initial_health)
    @game.add_player(@player)
    GameTurn.stub(:roll_die).and_return(2)
    @game.play(1) #
    @player.health.should==90
  end
  it "plays the game - average roll" do
    @initial_health = 100
    @player = Player.new("moe", @initial_health)
    @game.add_player(@player)
    GameTurn.stub(:roll_die).and_return(3)
    @game.play(1) #
    @player.health.should==100
  end
=begin
  it "prints the stats" do
    @player1 = Player.new("moe", 120)
    @game.add_player(@player1)
    @player2 = Player.new("joe", 101)
    @game.add_player(@player2)
    @player3 = Player.new("poe", 100)
    @game.add_player(@player3)
    @game.print_stats(1)
    @game.strong.size.should==2
    @game.weak.size.should==1
  end
=end
end