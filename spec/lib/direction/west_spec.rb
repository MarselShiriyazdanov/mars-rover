require "spec_helper"

describe Direction::West do
  let(:west) { described_class.new }

  describe "#left" do
    it "turns to East" do
      expect(west.left).to be_a(Direction::South)
    end
  end

  describe "#right" do
    it "turns to West" do
      expect(west.right).to be_a(Direction::North)
    end
  end

  describe "#move_from" do
    it "moves by -1 by x axis" do
      expect(west.move_from(0, 0)).to eq([-1, 0])
    end
  end
end
