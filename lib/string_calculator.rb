class StringCalculator
  def add(input_string)
    return 0 if input_string.empty?

    delimiter = ','
    if input_string.start_with?("//")
      delimiter_line, input_string = input_string.split("\n", 2)
      delimiter = delimiter_line.sub("//", "")
    end

    number_array = input_string.split(delimiter).map(&:to_i) 
    number_array.sum
  end
end