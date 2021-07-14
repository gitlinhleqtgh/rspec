class HelloWorld
    def say_hello
      "Hello World!"
    end
end

RSpec.describe HelloWorld do
  context "When testing the HelloWorld class" do
    it "should say 'Hello World' when we call the say_hello method" do
      hw = HelloWorld.new
      expect(hw.say_hello).to eql "Hello World!"
    end
   end
end