require "rails_helper"
FactoryBot.factories.clear
FactoryBot.define do
    factory :author do
        mane {"my first author"}
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
end