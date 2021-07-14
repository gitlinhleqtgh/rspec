require "rails_helper"

describe Caculator do
    it "adds two numbers" do
        caculator = Caculator.new
        expect(caculator.add(2,3)).to eq(5)
    end
end