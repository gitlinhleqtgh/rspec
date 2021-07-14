require "rails_helper"
RSpec.describe User, type: :model do
    context "associations" do
        it {is_expected.to has_many :bookings}
    end
end