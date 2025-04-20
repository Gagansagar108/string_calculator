class StringExpressionEvaluator 
    def self.add(input)
      return 0 if input.strip.empty?
      
      delimiter = ","
      numbers_string = input
  
      if input.start_with?("//")
        delimiter_line, numbers_string = input.split("\n", 2)
        delimiter = delimiter_line[2..]
      end
  
      sum_ = numbers_string
                  .gsub("\n", delimiter)
                  .split(delimiter)
                  .map(&:to_i)

      return sum_
    end
end