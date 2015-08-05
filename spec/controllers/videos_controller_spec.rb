require 'rails_helper'


RSpec.describe VideosController, type: :controller do
	before(:each) do
    @category = Category.create(name: "category 1")
    @video = @category.videos.create(yt_id: 'asdIOLKwca98q', link: 'https://www.youtube.com/watch?v=asdIOLKwca98q', channel: 'some random channel', description: 'this is fake', likes: 5, dislikes: 1)
	end
	

	describe "GET #show" do
		it 'is succesful' do

			get :show, category_id: 1, id: 1
			
			expect(response).to have_http_status(:success)
		end
	end

	describe "GET #search" do
		it 'gives a success response if a youtube video is retrieved' do

			get :search, q: "Ooz-nY4fOcI"

			expect(response).to have_http_status(:success)
		end
	end

	describe "GET #search_result" do
		it 'gives a success response when you try to view a result video' do
		

		get :search_result, vid_id: "H4Pzo475ccs"

		expect(response).to have_http_status(:success)
		end
	end

	describe "POST #create" do
		it 'creates a video' do
			expect {Video.create(yt_id: 'NvfAUE_ApF4', link: 'https://www.youtube.com/watch?v=NvfAUE_ApF4', channel: 'nekomon1', description: 'an actual video', likes: 67, dislikes: 0)}.to change{Video.count}.from(1).to(2)
			p "*" * 100
			p @category
		end
	end



end