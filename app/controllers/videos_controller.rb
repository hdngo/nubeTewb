class VideosController < ApplicationController
	# respond_to :json, :html
	# require 'json'

	def index
		@videos = Video.all

		# render json: @video.snippet
		# binding.pry
		
		# to use binding.pry, refresh your page, test your variables using video.methodname
		
		
	end

	def new
		@video = Video.new
	end

	def create
		@category = Category.find(params[:category_id])
		@video = @category.videos.create(video_params)
		if @video.save
			flash[:success] = "Upload successful"
			redirect_to videos_path
		else
			render :new
		end
	end

	def show
		@category = Category.find(params[:category_id])
		@video = Video.find(params[:id])
	end

	def search
		@search_query = params[:q]
		search_videos = Yt::Collections::Videos.new
		@video_results = search_videos.where(q: @search_query, order: 'relevance')
	end

	def search_result
		p "you made it to the route"
		p "still here"
		@video = Yt::Video.new id: params[:vid_id]
		# @video_id = params[:vid_id]
		
		render template: "videos/search_result.html.erb", layout: false

	end



	private

	def video_params
		params.require(:video).permit(:link)
	end
end
