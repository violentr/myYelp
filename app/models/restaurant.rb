class Restaurant < ActiveRecord::Base
	has_many :reviews
	has_many :images

	def add_image(url)
		images << Image.create(:url =>url)
	end
end
