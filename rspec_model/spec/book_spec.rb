require "rails_helper"
FactoryBot.factories.clear
FactoryBot.define do
    factory :book do
        title { "my title" }
        description { "my description" }
    end
end
RSpec.describe Book, type: :model do
    describe "Associations" do
      it "belongs to author" do
        association = described_class.reflect_on_association(:author)
        expect(association.macro).to eq :belongs_to
      end
    end
    describe "Validations" do
        subject { FactoryBot.create :book }
        it "is valid with valid attributes" do
          is_expected.to be_valid
        end
        it "is not valid without a title" do
          subject.title = nil
          is_expected.to_not be_valid
        end
        it "is not valid with too long description" do
          subject.description = "a" * 502
          is_expected.to_not be_valid
        end
    end
    describe "Test Associations 2" do
      it {is_expected.to belong_to(:author)}
    end
    describe "Test Validates 2" do
      it {is_expected.to validate_presence_of(:title)}
      it {is_expected.to validate_length_of(:description).is_at_most(500)}
    end
end