class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string "file_name" ,:limit =>20
      t.timestamps
    end
  end
end
