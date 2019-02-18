require 'raindrops'

describe Raindrops do
  let(:raindrops) { described_class.new }

  describe '#print_result' do
    context 'when input number is not divisible by any of the rule numbers (3, 5, 7)' do
      it 'outputs the input number' do
        expect { raindrops.print_result(34) }.to output('34').to_stdout
        expect { raindrops.print_result(-34) }.to output('-34').to_stdout
        expect { raindrops.print_result(10.6) }.to output('10.6').to_stdout
      end
    end

    context 'when input number is divisible by one of the rule numbers' do
      it 'does not output the input number when it is divisible by 3' do
        expect { raindrops.print_result(9) }.not_to output('9').to_stdout
        expect { raindrops.print_result(-12) }.not_to output('-12').to_stdout
      end

      it 'does not output the input number when it is divisible by 5' do
        expect { raindrops.print_result(10) }.not_to output('10').to_stdout
        expect { raindrops.print_result(-10) }.not_to output('-10').to_stdout
      end

      it 'does not output the input number when it is divisible by 7' do
        expect { raindrops.print_result(14) }.not_to output('14').to_stdout
        expect { raindrops.print_result(-14) }.not_to output('-14').to_stdout
      end

      it 'outputs "Pling" when the input number is divisible by 3' do
        expect { raindrops.print_result(9) }.to output('Pling').to_stdout
        expect { raindrops.print_result(-9) }.to output('Pling').to_stdout
      end

      it 'outputs "Plang" when the input number is divisible by 5' do
        expect { raindrops.print_result(10) }.to output('Plang').to_stdout
                expect { raindrops.print_result(-10) }.to output('Plang').to_stdout
      end

      it 'outputs "Plong" when the input number is divisible by 7' do
        expect { raindrops.print_result(14) }.to output('Plong').to_stdout
                expect { raindrops.print_result(-14) }.to output('Plong').to_stdout
      end
    end

    context 'when input number is divisible by several of the rule numbers' do
      it 'outputs "PlingPlang" when the input number is divisible by 3 and 5' do
        expect { raindrops.print_result(15) }.to output('PlingPlang').to_stdout
        expect { raindrops.print_result(-15) }.to output('PlingPlang').to_stdout
      end

      it 'outputs "PlingPlong" when the input number is divisible by 3 and 7' do
        expect { raindrops.print_result(21) }.to output('PlingPlong').to_stdout
        expect { raindrops.print_result(-21) }.to output('PlingPlong').to_stdout
      end

      it 'outputs "PlangPlong" when the input number is divisible by 5 and 7' do
        expect { raindrops.print_result(35) }.to output('PlangPlong').to_stdout
        expect { raindrops.print_result(-35) }.to output('PlangPlong').to_stdout
      end

      it 'outputs "PlingPlangPlong" when the input number is divisible by 3, 5 and 7' do
        expect { raindrops.print_result(105) }.to output('PlingPlangPlong').to_stdout
        expect { raindrops.print_result(-105) }.to output('PlingPlangPlong').to_stdout
      end
    end
  end
end
