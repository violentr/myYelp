class AddRestaurantIdAgainToReviews < ActiveRecord::Migration
  def change
    add_reference :reviews, :restaurant, index: true
  end
end
