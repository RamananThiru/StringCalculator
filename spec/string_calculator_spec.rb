require_relative '../lib/string_calculator'

RSpec.describe StringCalculator do
  let(:calculator) { StringCalculator.new }


  context 'when empty string is passed' do
    it 'returns 0' do
      expect(calculator.add("")).to eq(0)
    end
  end
end