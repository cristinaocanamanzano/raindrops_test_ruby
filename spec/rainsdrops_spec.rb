require "raindrops"

describe Raindrops do
  let(:raindrops)      { described_class.new }

  describe "#print_result" do
    it "outputs the number taken as the input" do
      expect { raindrops.print_result(34)}.to output("34").to_stdout
    end
  end
end
