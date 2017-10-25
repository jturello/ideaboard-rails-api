require 'rails_helper'

RSpec.describe Api::V1::IdeasController, type: :controller do

  describe "GET #index" do
    
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end

    it 'returns a saved idea' do
      @idea = create :idea, title: 'Newly saved idea!'
      get :index
      expect(JSON.parse(response.body).first["title"]).to eq('Newly saved idea!')
    end
  end
end
