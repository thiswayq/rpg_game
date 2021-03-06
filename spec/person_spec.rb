require_relative "../lib/person"
require_relative "../lib/sword"

describe Person do
  before(:each) do
    @lady_maria = Person.new("Lady Maria", "Female")
  end
  context "When person object is created" do
    it "should has all attributes filled" do
      expect(@lady_maria.name).to eq "Lady Maria"
      expect(@lady_maria.genre).to eq "Female"
      expect(@lady_maria.level).to eq 1
      expect(@lady_maria.health).to eq 50
      expect(@lady_maria.experience).to eq 0
      expect(@lady_maria.instance_variable_get(:@equipment)).to eq nil
    end
  end
  context "when equiping a new sword" do
    before(:each) do
      @noob_sword = Sword.new("noob_sword", -10)
      @lady_maria.set_equipment(@noob_sword)
    end
    it "should equip the new sword" do
      expect(@lady_maria.equipment).to eq "noob_sword"
    end
  end

  context "when removing sword" do
    before(:each) do
      @lady_maria.remove_equipment
    end
    it "equipment should be nil" do
      expect(@lady_maria.instance_variable_get(:@equipment)).to eq nil
    end
  end

  context "when exp is 100 and leveled_up method is called" do
    before(:each) do
      @lady_maria.experience = 100
      @lady_maria.leveled_up?
    end
    it "should change the player level and update attributes" do
      expect(@lady_maria.experience).to eq 0
      expect(@lady_maria.health).to eq 60
      expect(@lady_maria.level).to eq 2
    end
  end
end
