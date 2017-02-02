require_relative '../sword'

describe Sword do
  before(:each) do
     @muramasa = Sword.new("Muramasa", 10)
  end

  it "should create a sword" do
    expect(@muramasa.id).to eq 1
    expect(@muramasa.name).to eq "Muramasa"
    expect(@muramasa.power).to eq 10
  end

  context "when refine sword" do
    before(:each) do
      @muramasa.refine
    end
    it "should upgrade refine_level" do
      expect(@muramasa.refine_level).to eq 2
    end
    it "should update power" do
      expect(@muramasa.power).to eq 14
    end
  end
end
