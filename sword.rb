class Sword
  attr_accessor :id, :name, :power, :refine_level

  @@swords_createds = 0

  def initialize(name, power)
    @@swords_createds += 1
    @id = @@swords_createds
    @name = name
    @power = power
    @refine_level = 1
  end

  def refine
    @refine_level += 1
    new_power
  end

  def new_power
    @power += (2 * @refine_level)
  end

end
