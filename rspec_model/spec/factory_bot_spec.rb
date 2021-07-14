# require "rails_helper"
# FactoryBot.define do
#     factory :book do
#         title {"my first book title"}
#         description {"my first book description"}
#     end
# end
# RSpec.describe Book, type: :model do
#     let(:book) { FactoryBot.create :book }
#     context "when create the first book" do
#         it {is_expected.to eq("my first book title")}
#         it {is_expected.to eq("my first book description")}
#     end
# end