class PicturesController < ApplicationController
	def index
		@pictures = Picture.all
	end

	def show
  		@picture = Picture.find(params[:id])
	end

	def new
		
	end

	def create
		render :text => "Saving a picture. URL: #{params[:url]}, Title: #{params[:title]}, Artist: #{params[:artist]}"
	end

	def edit
		@picture = Picture.find(params[:id])
	end

	def update
		@picture = Picture.find([:id])

		if @picture.update_attributes(params[:picture])
			redirect_to "/pictures/#{@picture.id}"
		else
			render :edit
		end
	end
end
