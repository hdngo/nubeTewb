class VideosController < ApplicationController
	def index
		@videos = Video.order('created_at DESC')
	end

	def new
		@video = Video.new
	end

	def create
		@video = Video.new(video_params)
		if @video.save
			flash[:success] = "Upload successful"
			redirect_to videos_path
		else
			render :new
		end
	end

	private

	def video_params
		params.require(:video).permit(:link)
	end
end