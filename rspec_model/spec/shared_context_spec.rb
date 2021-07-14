RSpec.shared_context "shared context" do
    before {@some_var = :some_value}
    def shared_method
        "this is shared method"
    end
    let(:shared_let){ "this shared let "}
    subject {"this is the subject"}
end
RSpec.describe "Test shared_examples" do
    include_context "shared context"
    it { expect(@some_var).to eq(:some_value)}
    it { expect(shared_method).to eq("this is shared method")}
    it { expect(shared_let).to eq("this shared let ")}
    it { is_expected.to eq("this is the subject")}
end