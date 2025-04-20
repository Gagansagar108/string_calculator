class StringExpressionEvaluator 
    def self.add(input)
      return 0 if input.strip.empty?
      
      delimiter = ","
      numbers_string = input
  
      if input.start_with?("//")
        delimiter_line, numbers_string = input.split("\n", 2)
        delimiter = delimiter_line[2..]
      end
  
      numbers = numbers_string
                  .gsub("\n", delimiter)
                  .split(delimiter)
          
     
      negatives = numbers.select { |n| n < 0 }
      raise "negative numbers not allowed #{negatives.join(',')}" if negatives.any?
      bindig.pry
      numbers.sum


    end
end