class StringCalculator
  def add(input_string)
    return 0 if input_string.empty?

    delimiter = ','
    if input_string.start_with?("//")
      delimiter_line, input_string = input_string.split("\n", 2)
      delimiter = delimiter_line.sub("//", "")
    end

    number_array, negative_number_array = extract_number_arrays(input_string, delimiter)
    sanitize_input_array(number_array, negative_number_array)
    number_array.sum
  end

  def extract_number_arrays(input_string, delimiter)
    number_array = input_string.split(delimiter).map(&:to_i)
    negative_number_array = number_array.select { |num| num < 0 }
    [number_array, negative_number_array]
  end

  def sanitize_input_array(number_array, negative_number_array)
    if negative_number_array.any?
      raise "negative numbers not allowed #{negative_number_array.join(',')}"
    end
  end
end