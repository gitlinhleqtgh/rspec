describe "An example of the comparison Matchers" do
    it "should show how the comparison Matchers work" do
        a = 1
        b = 2.5
        c = 3
        d = 'test string'
        x = true
        y = false
        z = nil

        expect(a).to be >= a
        expect(a).to be < b
        expect(b).to be <= b
        expect(c).to be_between(1,3).inclusive
        expect(b).to be_between(1,3).exclusive
        expect(d).to match /TEST/i

        expect(a).to be_instance_of Fixnum
        expect(b).to be_kind_of Numeric
        expect(d).to respond_to(:length)

        expect(x).to be true
        expect(y).to be_falsey
        expect(z).to be_falsey
        expect(x).to be_truthy
        expect(z).to be_nil

        expect { 1/0 }.to raise_error(ZeroDivisionError)
        expect { 1/0 }.to raise_error("divided by 0")
        expect { 1/0 }.to raise_error("divided by 0", ZeroDivisionError)
    end
end