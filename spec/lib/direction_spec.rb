require "spec_helper"

describe Direction do
  describe ".parse" do
    it "parses direction" do
      expect(described_class.parse("W")).to be_a(Direction::West)
    end
  end
end
