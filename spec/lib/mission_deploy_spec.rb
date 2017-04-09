require "spec_helper"

describe MissionDeploy do
  let(:deployer) { described_class.deploy("input.example") }

  describe "#start" do
    it "starts mission" do
      expect(deployer.start).to eq(["1 3 N", "5 1 E"])
    end
  end
end
