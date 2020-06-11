require "spec_helper"

RSpec.describe Fox do
  let(:fox) { Fox.new("Jack") }
  let(:fox2) { Fox.new("Bill") }

  describe ".new" do
    it "take a name as an argument" do
      expect(fox).to be_a(Fox)
    end
  end

  describe "#name" do
    it "has a reader for name" do
      expect(fox.name).to eq("Jack")
      expect(fox2.name).to eq("Bill")
    end
  end

  describe "#speak" do
    it "says what foxes say" do
      expect(fox.speak).to eq("Ring-ding-ding-ding-dingeringeding!")
    end
  end
end
