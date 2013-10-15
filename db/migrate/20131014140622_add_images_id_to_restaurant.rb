class AddImagesIdToRestaurant < ActiveRecord::Migration
  def change
    add_reference :restaurants, :images, index: true
  end
end
