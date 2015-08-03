class CategoriesController < ApplicationController
	protect_from_forgery
	def index
		@categories = Category.all
	end


	def edit
		
	end

	def show
		@category = Category.find(params[:id])
		@videos = @category.videos
	end

	def destroy
		@category = Category.find(params[:id])
		@category.destroy
	end
end
