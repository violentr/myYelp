class Restaurant < ActiveRecord::Base
	has_many :reviews
	has_many :images
	accepts_nested_attributes_for :reviews

	def add_image(url)
		images << Image.create(:url =>url)
	end

	def add_review(content)
		reviews << Review.create(:content =>content)
	end
end
