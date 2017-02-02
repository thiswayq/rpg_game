class Person
  attr_accessor :name, :genre, :health, :level, :experience
  attr_reader :equipment

  def initialize(name, genre)
    @name = name
    @genre = genre
    @equipment = nil
    @health = 50
    @level = 1
    @experience = 0
  end

  def set_equipment(sword)
    @equipment = sword.id
  end

  def remove_equipment
    removed_equipment = @equipment
    @equipment = nil
    return removed_equipment
  end

  def leveled_up?
    if @experience >= 100
      @level += 1
      @experience = 0
      @health += 10
      return true
    else
      return false
    end
  end

end
