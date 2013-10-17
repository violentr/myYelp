class RestaurantsController < ApplicationController
	def index
		@restaurants =Restaurant.all.order("restaurants.name ASC").limit(10)
		@reviews =Review.all

	end


	def new
		@restaurant=Restaurant.new
		@restaurant.reviews.build if @restaurant.reviews.empty?
	end

	def show
		@restaurant=Restaurant.find(params[:id])
		
	end


	# def create
	# 	@restaurant =Restaurant.new(params[:restaurant]).permit(:name, :description)
	# 	if @restaurant.save
	# 		redirect_to('/restaurants')
	# 	else
	# 		render('new')
	# 	end
	# end

	def create
		@restaurant=Restaurant.new(rest_params)

		if @restaurant.save
			flash.now[:notice] ="Updated !!"
			redirect_to @restaurant
		else
			flash.now[:errors] = @restaurant.errors.full_messages.join('')
			render('new')
		end
	end

	def edit
		@restaurant=Restaurant.find(params[:id])
		@restaurant.reviews.build if @restaurant.reviews.empty?
	end

	def update
		@restaurant=Restaurant.find(params[:id])

		if @restaurant.update_attributes(rest_params)
			flash[:notice] ="Your Record was updated"
			redirect_to(:action =>'show',:id =>@restaurant.id)
		else
			flash.now[:errors] = @restaurant.errors.full_messages.join('')
			render('edit')
		end
	end

	private
	def rest_params
    	params.require(:restaurant).permit(:name, :description, reviews_attributes: [:id, :content])
  	end


end
