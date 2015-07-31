class VideosController < ApplicationController
	def index
		@videos = Video.order('created_at DESC')
		video = Yt::Video.new url: 'https://www.youtube.com/watch?v=Q8QGdnuWrqU'
		p video
		p "* " * 100
		p video.like_count
		video_hash = {likes: video.like_count}
		p video_hash
		render :json video_hash
		# binding.pry
		# to use binding.pry, refresh your page, test your variables using video.methodname
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
