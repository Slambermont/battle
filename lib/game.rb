class Game
  attr_reader :player_1, :player_2, :attacker, :victim

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @counter = 0
  end

  def attack
    if @counter%2 == 0
      @player_2.hp -= 10
      @attacker = @player_1
      @victim = @player_2
    else
      @player_1.hp -= 10
      @attacker = @player_2
      @victim = @player_1
    end
    @counter += 1
  end

end
