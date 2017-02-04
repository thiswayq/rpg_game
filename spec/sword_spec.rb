require_relative '../lib/sword'

describe Sword do
  before(:each) do
     @muramasa = Sword.new("Muramasa", 10)
  end

  it "should create a sword" do
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

  context "when sword has negative power" do
    before(:each) do
      @muramasa.power = -1
    end
    it "power should be negative as normal" do
      expect(@muramasa.power).to eq -1
    end
  end
end
