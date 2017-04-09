require "spec_helper"

describe Plateau do
  describe "#accessible?" do
    let(:plateau) { described_class.new([5, 5]) }

    context "when rover can move to position" do
      let(:rover_coordinates) { [1, 1] }

      it "allows moving" do
        expect(plateau.accessible?(rover_coordinates)).to be true
      end
    end

    context "when rover can't move to position" do
      let(:rover_coordinates) { [6, 1] }

      it "disallows moving" do
        expect(plateau.accessible?(rover_coordinates)).to be false
      end
    end
  end
end
