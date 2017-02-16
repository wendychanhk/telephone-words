require 'rspec'
require_relative '../telephone-words.rb'

describe Words do
  describe "#telephoneWords" do
  
   let(:arr_input) { [2, 5] }
   let(:arr_output) { ["AJ", "AK", "AL", "BJ", "BK", "BL", "CJ", "CK", "CL"] }

      it "print words according to the number inout" do
        words = Words.new 
        expect(words.telephoneWords arr_input).to match_array (arr_output)
    end 
  end 
end