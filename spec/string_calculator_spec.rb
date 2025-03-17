require_relative '../lib/string_calculator'

RSpec.describe StringCalculator do
  let(:calculator) { StringCalculator.new }


  context 'when empty string is passed' do
    it 'returns 0' do
      expect(calculator.add("")).to eq(0)
    end
  end

  context 'when valid single digit number is passed' do
    it 'returns 2' do
      expect(calculator.add("1")).to eq(1)
    end
  end

  context 'when valid 3 digit number is passed' do
    it 'returns 100' do
      expect(calculator.add("100")).to eq(100)
    end
  end

  context 'when , seperated numbers string is passed' do
    it 'returns 6' do
      expect(calculator.add("1,2,3")).to eq(6)
    end

    it 'returns 300' do
      expect(calculator.add("100,100,100")).to eq(300)
    end
  end

  context 'when custom delimiter is added' do
    it 'returns the sum of numbers seperated by #' do
      expect(calculator.add("//#\n1#2")).to eq(3)
    end

    it 'returns the sum of numbers  with more than 1 digit seperated by #' do
      expect(calculator.add("//#\n100#2")).to eq(102)
    end
  end

  context 'when -ve numbers are present in the string' do
    it 'raises error with single negtive number' do
      expect { calculator.add("//;\n-100;2") }.to raise_error(StandardError, "negative numbers not allowed -100")
    end

    it 'raises error with multiple negative number' do
      expect { calculator.add("//#\n-100#-2") }.to raise_error(StandardError, "negative numbers not allowed -100,-2")
    end
  end

  context 'when number greater than 1000 is present' do
    it 'ignores the number > 1000 and returns remaining sum' do
      expect(calculator.add("//#\n1001#2#3")).to eq(5)
    end

    it 'raises error when number is negative' do
      expect { calculator.add("//#\n-1000#-2") }.to raise_error(StandardError, "negative numbers not allowed -1000,-2")
    end
  end

  context 'when delimiters of any size' do
    it 'retuns the sum as 6 if delimiter is ***' do
      expect(calculator.add("//***\n100***2")).to eq(102)
    end

    it 'retuns the sum as 6 if delimiter is #####' do
      expect(calculator.add("//#####\n100#####2")).to eq(102)
    end
  end

  context 'when multiple delimiters are provided' do
    it "handles multiple single-character delimiters" do
      expect(calculator.add("//[*][%]\n1*2%3")).to eq(6)
    end
  end
end