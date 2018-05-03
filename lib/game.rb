class Game
  attr_reader :player_1, :player_2, :attacker, :victim

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @counter = 0
  end

  def attack
    role
    @victim.hp -= 10
  end

  private

  def role
    if @counter.even?
      @attacker = @player_1
      @victim = @player_2
    else
      @attacker = @player_2
      @victim = @player_1
    end
    @counter += 1
  end

end
