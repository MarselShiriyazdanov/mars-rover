require "spec_helper"

describe Rover do
  let(:direction) { spy("Direction") }
  let(:plateau) { spy("Plateau") }
  let(:rover) { described_class.new([5, 5], direction, plateau) }

  describe "#turn_left" do
    before do
      rover.turn_left
    end

    it "turns to new direction" do
      expect(direction).to have_received(:left)
    end
  end

  describe "#turn_right" do
    before do
      rover.turn_right
    end

    it "turns to new direction" do
      expect(direction).to have_received(:right)
    end
  end

  describe "#move" do
    before do
      rover.move
    end

    it "calculaes new position" do
      expect(direction).to have_received(:move_from)
    end
  end

  describe "#location" do
    let(:direction_shorthand) { "W" }

    before do
      allow(direction).to receive(:to_s).and_return(direction_shorthand)
    end

    it "returns rover position and bearing" do
      expect(rover.location).to eq("5 5 W")
    end
  end
end
