RSpec.describe Array do
    describe "when first created" do
        it "should be empty" do
            expect(subject).to be_empty
        end
    end
end

RSpec.describe Array, "with some elements" do
    subject { [1,2,3]}
    it "should be empty" do
        expect(subject).to eq([1,2,3])
    end 
end