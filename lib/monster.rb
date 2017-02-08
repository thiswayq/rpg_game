class Monster
  attr_accessor :name, :health, :power, :level, :da_chance, :limit_da_chance

  def initialize(name, level)
    @name = name
    @level = level
    @health = 50 + (10 * level)
    @power = 5 + (2*level)
    @da_chance = level
    @limit_da_chance = 1 + (level * 2)
  end

  def double_atk?
    double_atk = rand(@limit_da_chance)
    if double_atk <= @da_chance
      return true
    else
      return false
    end
  end

end
