class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string "username" ,:limit =>10
    	t.string "first_name", :limit =>25
			t.string "last_name", :limit =>50
			t.string "email", :default=>"", :null =>false
			t.string "password", :limit =>20
      t.timestamps
    end
  end
end
