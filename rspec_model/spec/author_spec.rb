require "rails_helper"
FactoryBot.factories.clear
FactoryBot.define do
    factory :author do
        name {"my first author"}
        age {30}
    end
end
RSpec.describe Author, type: :model do
    describe "Associations" do
        it "has many books" do
            association = described_class.reflect_on_association(:books)
            expect(association.macro).to eq :has_many  
        end
    end
    describe "Validates" do
      subject{FactoryBot.create :author}
      it "is not valid without title" do
        subject.name = nil
        is_expected.to_not be_valid
      end
      it "is valid without age" do
        subject.age = nil
        is_expected.to be_valid
      end
    end
    describe "Test Associations 2" do
      it {is_expected.to have_many(:books)}
    end
end