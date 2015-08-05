require 'rails_helper'


RSpec.describe CategoriesController, type: :controller do
	

	describe "GET #index" do
		it 'will return a 200 status' do
			get :index
			expect(response.status).to eq 200
			expect(response).to have_rendered 'index'
			p"*"*100
			p response.body

		end
	end

	describe "GET #show" do
		it 'is succesful' do
			fake_category = double :category
			expect(Category).to receive(:find).with('1').and_return(fake_category)
			get :show, id: 1
			expect(response).to have_http_status(:success)
		end
	end

end