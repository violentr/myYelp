class AddRaitingsToReview < ActiveRecord::Migration
  def change
    add_column :reviews, :raitings, :integer
  end
end
