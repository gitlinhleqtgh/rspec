class SimpleClass
    attr_accessor :message
    def initialize
        puts "\nCreating a new instance of the SimpleClass class"
        @message = "howdy"
    end
    def update_message new_mess
        @message = new_mess
    end
end

describe SimpleClass do
    before(:each) do
        @simple_class = SimpleClass.new
    end
    it "should have an initial message" do
        expect(@simple_class).to_not be_nil
    end
    it "should be able to change its message" do
        @simple_class.update_message("a new message")
        expect(@simple_class.message).to_not be "howdy"
    end
    # before(:each) do 
    #     puts "Runs before each Example" 
    #  end 
     
    #  after(:each) do 
    #     puts "Runs after each Example" 
    #  end 
     
    #  before(:all) do 
    #     puts "Runs before all Examples" 
    #  end 
     
    #  after(:all) do 
    #     puts "Runs after all Examples"
    #  end 
     
    #  it 'is the first Example in this spec file' do 
    #     puts 'Running the first Example' 
    #  end 
     
    #  it 'is the second Example in this spec file' do 
    #     puts 'Running the second Example' 
    #  end 
    #  it 'is a slow test', :slow => true do 
    #     sleep 10 
    #     puts 'This test is slow!' 
    #  end 
     
    #  it 'is a fast test', :fast => true do 
    #     puts 'This test is fast!' 
    #  end 
end