require "rails_helper"
FactoryBot.factories.clear
FactoryBot.define do
    factory :book do
        title { "my title" }
        description { "my description" }
        association :author
    end
end
RSpec.describe Book, type: :model do
    describe "Associations" do
        it { is_expected.to belongs_to(:author)}

    end
    # describe "Validations" do
    #     subject { FactoryBot.create :book }
    #     it "is valid with valid attributes" do
    #         is_expected.to be_valid
    #     end
    # end
end