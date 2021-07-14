require "rails_helper"
require "contact"
RSpec.describe Contact do
    before { @contact = Contact.new }
    describe "initialized in before (:each)" do
        it "has 0 contacts" do
            expect(@contact.names.count).to eq(0)
        end
        it "can accept new contact" do
            @contact.names << "New contact"
        end
        it "still has 0 contact" do
            expect(@contact.names.count).to eq(0)
        end
    end
end