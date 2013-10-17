class ReviewsController < ApplicationController

	def index
		@reviews =Review.all
		render :reviews_index
	end
end
