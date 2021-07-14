RSpec.shared_examples "shared example" do | parameter |
    let(:something) {parameter}
    it "uses the given parameter" do
        expect(something).to eq(parameter)
    end
end
RSpec.describe "Test shared_examples" do
    context "with first test case" do
        it_behaves_like "shared example", "parameter1"
    end
    context "with second test case" do
        it_behaves_like "shared example", "parameter2"
    end
end