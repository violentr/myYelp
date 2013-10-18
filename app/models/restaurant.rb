class Restaurant < ActiveRecord::Base
	has_many :reviews
	has_many :images
	accepts_nested_attributes_for :reviews

	validates :name, :presence => true

	def add_image(url)
		images << Image.create(:url =>url)
	end

	def add_review(content)
		reviews << Review.create(:content =>content)
	end
	def add_raitings(raiting)
		reviews << Review.create(:raitings =>raiting)
	end
end
