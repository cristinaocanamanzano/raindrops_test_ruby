require 'raindrops'

describe Raindrops do
  let(:raindrops) { described_class.new }

  describe '#print_result' do
    it 'outputs the input number when it is not disible by 3' do
      expect { raindrops.print_result(34) }.to output('34').to_stdout
    end

    it 'does not output the input number when it is divisible by 3' do
      expect { raindrops.print_result(9) }.not_to output('9').to_stdout
    end

    it 'does not output the input number when it is divisible by 5' do
      expect { raindrops.print_result(10) }.not_to output('10').to_stdout
    end

    it 'outputs "Pling" when the input number is divisible by 3' do
      expect { raindrops.print_result(9) }.to output('Pling').to_stdout
    end

    it 'outputs "Plang" when the input number is divisible by 5' do
      expect { raindrops.print_result(10) }.to output('Plang').to_stdout
    end

    it 'outputs "PlingPlang" when the input number is divisible by 3 and 5' do
      expect { raindrops.print_result(15) }.to output('PlingPlang').to_stdout
    end
  end
end
