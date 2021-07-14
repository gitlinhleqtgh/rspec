RSpec.describe "let method" do
    let(:foo) do
        puts "define foo variable"
        "cute dog"
    end
    it "has expected result" do
        puts "begin it block"
        expect(foo).to eq("cute dog")
    end
    let!(:fee) do
        puts "define fee variable"
        "cute cat"
    end
    it "has expected result" do
        puts "begin it block"
        expect(fee).to eq("cute cat")
    end
end