require 'rails_helper'
RSpec.describe StringCalculator
    describe '.add' do
        it 'return 0 when string is empty' do 
            expect(described_class.add("")).to eq(0)
        end 
    end
end 