class AddReastaurantsIdToImages < ActiveRecord::Migration
  def change
    add_reference :images, :restaurant, index: true
  end
end
