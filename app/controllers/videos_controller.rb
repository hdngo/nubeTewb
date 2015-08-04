class VideosController < ApplicationController
	# respond_to :json, :html
	# require 'json'
	protect_from_forgery

	def index
		@videos = Video.all

		# render json: @video.snippet
		# binding.pry
		
		# to use binding.pry, refresh your page, test your variables using video.methodname
		
	end

	def new
		@video = Video.new
	end
	
	def edit
		p "*" * 100
		p params
		@category = Category.find(params[:category_id])
		@video = Video.find(params[:id])

	end

	def create
		@category = Category.find(params[:video][:category_id])
		@yt_vid_id = params[:video][:yt_vid_id]
		@yt_vid = Yt::Video.new id: @yt_vid_id
		@category.videos.create(grab_params(@yt_vid))
		redirect_to category_path(@category)
		
	end

	def show
		@category = Category.find(params[:category_id])
		@video = Video.find(params[:id])
		if request.xhr?
			render json: {category: @category, video: @video}
		end
	end


	def update
		p "*" * 100
		p params
		@video = Video.find(params[:id])
		@video.update_attributes(video_params)
		p "this is the video category now #{params[:video][:category_id]}"
	end

	def destroy
		p"*" * 100
		p params
		p"*" * 100
		@video = Video.find(params[:id])
		@category = @video.category
		@video.destroy
		
		redirect_to category_path(@category)
	end

	def search
		p params
		@search_query = params[:q]
		search_videos = Yt::Collections::Videos.new
		@video_results = search_videos.where(q: @search_query, order: 'relevance').first(200)
		@video_results.each do |result|
			p result.channel_title
		end

		if request.xhr?
			render json: @video_results
		end
	end

	def search_result
		p "you made it to the route"
		p "still here"
		@categories = Category.order(:name)
		@video = Yt::Video.new id: params[:vid_id]
		# @video_id = params[:vid_id]
		
		render template: "videos/search_result.html.erb", layout: false
	end



	private

	def video_params
		params.require(:video).permit(:id, :yt_id, :link, :thumbnail, :title, :channel, :description, :likes, :dislikes, :category_id)
	end

	def grab_params(video)
		selected_video_data = {yt_id: video.id, link: "https://www.youtube.com/watch?v=#{video.id}", thumbnail: video.thumbnail_url, title: video.title, description: video.description, channel: video.channel_title, likes: video.like_count, dislikes: video.dislike_count}
	end
end
