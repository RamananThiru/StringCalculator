class StringCalculator
  def add(input_string)
    return 0 if input_string.empty?

    delimiter, input_string = get_delimiter_and_string(input_string)

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

    number_array.select! { |num| num <= 1000 }
  end

  def get_delimiter_and_string(input_string)
    delimiter = ','
    string_to_sum = input_string

    if input_string.start_with?("//")
      delimiter_line, string_to_sum = input_string.split("\n", 2)
      delimiter = get_delimiter(delimiter_line)
    end
    [delimiter, string_to_sum]
  end

  def get_delimiter(delimiter_line)
    delimiter = ','
    if delimiter_line.start_with?("//")
      delimiter_line = delimiter_line.gsub("//", "") # Remove the "//"

      delimiters = delimiter_line.scan(/\[(.*?)\]/).flatten
      if delimiters.any?
        delimiter = Regexp.union(delimiters)
      else
        delimiter = delimiter_line
      end
    end
    delimiter
  end
end