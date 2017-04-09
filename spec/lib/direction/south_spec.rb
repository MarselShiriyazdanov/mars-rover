require "spec_helper"

describe Direction::South do
  let(:south) { described_class.new }

  describe "#left" do
    it "turns to East" do
      expect(south.left).to be_a(Direction::East)
    end
  end

  describe "#right" do
    it "turns to West" do
      expect(south.right).to be_a(Direction::West)
    end
  end

  describe "#move_from" do
    it "moves by -1 by y axis" do
      expect(south.move_from(0, 0)).to eq([0, -1])
    end
  end
end
