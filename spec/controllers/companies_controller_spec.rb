require 'rails_helper'

RSpec.describe CompaniesController, type: :controller do
  describe 'GET index' do
    let!(:companies) { create_list :company, 5 }

    it 'return status 200' do
      get :index
      expect(response).to have_http_status :ok
    end

    it 'return document types' do
      get :index
      expect(json.size).to eq 5
    end
  end
end
