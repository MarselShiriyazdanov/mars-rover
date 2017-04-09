require "spec_helper"

describe Direction::East do
  let(:east) { described_class.new }

  describe "#left" do
    it "turns to North" do
      expect(east.left).to be_a(Direction::North)
    end
  end

  describe "#right" do
    it "turns to South" do
      expect(east.right).to be_a(Direction::South)
    end
  end

  describe "#move_from" do
    it "moves by +1 by x axis" do
      expect(east.move_from(0, 0)).to eq([1, 0])
    end
  end
end
