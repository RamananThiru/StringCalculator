class StringCalculator
  def add(input_string)
    return 0 if input_string.empty?
 
    number_array = input_string.split(',').map(&:to_i)
 
    number_array.sum
  end
end