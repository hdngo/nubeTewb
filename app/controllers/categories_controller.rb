class CategoriesController < ApplicationController
	protect_from_forgery
	def index
		@categories = Category.all
			p "*" * 100
			p "you made it here"
			if request.xhr?
				render json: @categories
			end
	end


	def edit
		
	end

	def show
		@category = Category.find(params[:id])
		# @videos = @category.videos
		if request.xhr?
			p "you made it here dude"
			render json: @category.videos
		end
	end

	def destroy
		@category = Category.find(params[:id])
		@category.destroy
	end
end
