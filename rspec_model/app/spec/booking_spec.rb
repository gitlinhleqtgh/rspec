require "rails_helper"
RSpec.describe Booking, type: :model do
    context "association" do
        it {is_expected.to belongs_to :user}
    end
    context "validates" do
        
    end
end