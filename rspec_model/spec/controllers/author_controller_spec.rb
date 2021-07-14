require "rails_helper"
RSpec.describe AuthorsController, type: :controller do
  describe "GET #index" do
    let!(:authors) {FactoryBot.create_list :author, 2}
    before {get :index}
    it "returns a success response" do
      expect(response).to be_success
    end
    it "returns a success response" do
      expect(response).to be_success
    end
    it "assigns @authors" do
      expect(assigns(:authors)).to eq(authors)
    end
    it "renders the index template" do
      expect(response).to render_template(:index)
    end
  end
end