
require 'spec_helper'



describe 'displays home page H1 content' do
	it 'should display content welcome to myYelp' do
	visit('/restaurants')
	expect(page).to have_content 'Welcome to myYelp'
	end
end

describe 'displays first element from db' do
let(:rest) {Restaurant.create(:name =>"FatDuck",:description =>"Chief Blumentals")}
	it 'should be with name and description' do
		visit('/restaurants')
		rest_record = rest.name
		expect(page).to have_content rest.name
		
	end
end

describe 'to crete new restaurant' do
	it 'should display a link for the new created restaurant' do
	visit('/restaurants/new')
	fill_in 'Name', :with => 'New Restaurant'
	fill_in 'Description', :with => 'description'
	click_button 'OK'
	expect(page).to have_content 'Welcome to myYelp'
	end

end