require "rails_helper"
require "caculator"

RSpec.describe Caculator do
    describe "#sum" do
        it "return sum of 2 numbers" do
            calc = Caculator.new
            result = calc.sum(1,2)
            expect(result).to eq(3) 
        end
    end
end