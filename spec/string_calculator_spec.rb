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
end