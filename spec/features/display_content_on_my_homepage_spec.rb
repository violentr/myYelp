
require 'spec_helper'

describe 'displays home page H1 content' do
	it 'should display content welcome to myYelp' do
	visit('/restaurants')
	expect(page).to have_content('Welcome to myYelp')
	end
end

describe 'displays first element from db' do
let(:rest) {Restaurant.create(:name =>"FatDuck",:description =>"Chief Blumentals")}
	it 'should be with name and description' do
		visit('/restaurants/new')
		fill_in "Name", with: 'FatDuck'
		fill_in "Description", with: "Chief Blumentals"
		click_button "Create Restaurant"
		click_link 'FatDuck'
		expect(page).to have_content "Available in: Chief Blumentals"
		# rest_record = rest.name
		# expect(page).to have_content rest.name
		
	end
end

describe 'to crete new restaurant' do
	it 'should display a link for the new created restaurant' do
	visit('/restaurants/new')
	fill_in 'Name', :with => 'New Restaurant'
	fill_in 'Description', :with => 'This restaurant is in london'
	click_button 'Create Restaurant'
	expect(page).to have_content 'Welcome to myYelp'
	end

describe 'to view content (ajax)' do
	let!(:rest) {Restaurant.create(:name =>"FatDuck",:description =>"Chief Blumentals")}
	it 'should display content after clicking Link' do
		visit('/restaurants')
		# raise page.html
		click_link rest.name
		click_link 'link'
		expect(page).to have_content('')
		end
	end

	describe 'shows a review to each restaurant' do
		let!(:rest) {Restaurant.create(:name =>'FatDuck',:description =>'Chief Blumentals')}
		let!(:review) {Review.create(:content =>'Plesant food')}
		
		it 'shows only review related to the restaurant' do
		rest.reviews << review
		visit ('/restaurants')
		expect(page).to have_content('Plesant food')


		end
	end

	describe 'to be able to review to a restaurant (textarea)' do
		let!(:rest) {Restaurant.create(:name =>"FatDuck",:description =>"Chief Blumentals")}
		it 'should have a review for each restaurant' do
			rest.reviews << Review.create(:content =>'my review about this restaurant')
			visit edit_restaurant_path(rest)
			# visit "/restaurants/#{rest.id}/edit"
			page.should have_selector('textarea')

	# describe 'On click to sign in' do
	# xit 'should show ask for username and password' do

		end
	end

end