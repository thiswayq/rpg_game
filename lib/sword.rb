class Sword
  attr_accessor :name, :power, :refine_level

  def initialize(name, power)
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
