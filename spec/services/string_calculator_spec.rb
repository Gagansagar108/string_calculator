# spec/services/string_calculator_spec.rb
require 'rails_helper'

RSpec.describe StringExpressionEvaluator do
  describe '.add' do

    it 'returns 0 for empty string' do
      expect(described_class.add("")).to eq(0)
    end

    it 'returns number for a single number input' do
        expect(described_class.add("5")).to eq(5)
    end  

    it 'return sum of two comma seperated numbers' do 
        expect(described_class.add("5,10")).to eq(15)
    end 
    #

    #Empty string returns 0

    #One number returns the number itself
    
    #Two comma-separated numbers
    
   # Multiple comma-separated numbers
    
    #Handle newlines between numbers
    
    #Custom delimiter specified with //
    
    #Custom delimiter with newline + commas
    
   # Negative number raises exception
    
    #Multiple negative numbers in exception message
    
    #Input with extra whitespace
    
    #Input with trailing newline
    
    #Custom delimiter that's a special character
    
    #Custom delimiter as a multi-character string
    
    #Ignore numbers greater than 1000
    
    #Input with no numbers
    
    #nput with mixed invalid tokens





  end
end
