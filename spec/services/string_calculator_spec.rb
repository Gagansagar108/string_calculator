# spec/services/string_calculator_spec.rb
require 'rails_helper'

RSpec.describe StringExpressionEvaluator do
  describe '.add' do

    it 'returns 0 for empty string' do
      expect(described_class.add("")).to eq(0)
    end

    it 'returns number for a single number input' do
        expect(described_class.add("1")).to eq(1)
    end  

    it 'return sum of two comma seperated numbers' do 
        expect(described_class.add("1,5")).to eq(6)
    end 

    it 'handles new lined between the number' do 
        expect(described_class.add("5\n11")).to eq(16)
    end 

    it 'handles custom delimiter string' do 
        expect(described_class.add("//;\n1;2")).to eq(3)
    end 

    it 'handles custom delimiter and new line string' do 
        expect(described_class.add("//;\n1;2")).to eq(3)
    end 


    it 'raises an error for negative numbers' do
        expect {
          described_class.add("-2")
        }.to raise_error("negative numbers not allowed -2")
    end


    it 'raises an error for multiple negative numbers' do
        expect {
          described_class.add("1,-2,3,-4")
        }.to raise_error("negative numbers not allowed -2,-4")
    end


    it 'remove extra blank space' do
        expect(evaluator.add(" 1 , 2 ")).to eq(3)
    end
    

    it 'Should ignore an unnecessary trailing newline at the end' do
        expect(evaluator.add("1,2\n")).to eq(3)
    end
    

    it "Should correctly use special characters (e.g., |, *, $) as delimiters" do
        expect(evaluator.add("//|\n1|2")).to eq(3)
        expect(evaluator.add("//*\n2*3")).to eq(5)
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



  end
end
