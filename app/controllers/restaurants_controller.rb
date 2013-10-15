class RestaurantsController < ApplicationController
	def index
		@restaurants =Restaurant.all.order("restaurants.name ASC").limit(10)

	end


	def new
		@restaurant=Restaurant.new
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
		restaurant=Restaurant.new(rest_params)
		if restaurant.save
			redirect_to('/restaurants')
		else
			render('new')
		end
	end

	def edit
		@restaurant=Restaurant.find(params[:id])
	end

	def update
		@restaurant=Restaurant.find(params[:id])
		if @restaurant.update_attributes(rest_params)
			redirect_to(:action =>'show',:id =>@restaurant.id)
		else
			render('edit')
		end
	end

	private
	def rest_params
    	params.require(:restaurant).permit(:name, :description)
  	end


end
