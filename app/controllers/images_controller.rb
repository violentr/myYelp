class ImagesController < ApplicationController
	def index
		images =Image.all
		render json: images.map{|i| i.url}
	end
end
