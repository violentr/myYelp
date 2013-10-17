require 'spec_helper'

describe Restaurant do
  it {should have_many(:reviews)}
  it {should have_many(:images)}

  it "should not be valid without a name" do
  	rest = Restaurant.new
  	expect(rest).not_to be_valid
  end

  it "should have error messages without a name" do
    rest = Restaurant.new
    rest.valid?
    expect(rest.errors.full_messages.include?("Name can't be blank")).to be_true
  end

  it "should add an image" do
  	rest = Restaurant.new
  	rest.add_image("/assets/test.png")
  	expect(rest.images.first.url).to eq "/assets/test.png"
  end
  it 'should add review' do
  	rest =Restaurant.new
  	rest.add_review('Nice food')
  	expect(rest.reviews.first.content).to eq "Nice food"
  end
  

end
