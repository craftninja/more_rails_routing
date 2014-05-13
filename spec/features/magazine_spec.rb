require 'spec_helper'

feature 'Magazines' do
  scenario 'A user can see all ads for a magazine' do
    cosmo = Magazine.create!(name: 'Cosmo')
    Ad.create!(manufacturer: 'Avon', magazine_id: cosmo.id)
    Ad.create!(manufacturer: 'Mabeline', magazine_id: cosmo.id)

    visit "/magazines/#{cosmo.id}"

    click_link "Ads"

    expect(page).to have_content "Avon"
    expect(page).to have_content "Mabeline"
  end

  scenario "A user can mark a magazine as read" do
    cosmo = Magazine.create!(name: 'Cosmo')

    visit "/magazines/#{cosmo.id}"

    expect(page).to have_no_content "You have read this one!"

    click_button "I've read this one!"

    expect(page).to have_content "You have read this one!"
  end

  scenario "A user can search for magazines" do
    Magazine.create!(name: 'Cosmo')
    Magazine.create!(name: 'Car and Driver')

    visit "/magazines/search?q=Cosmo"

    expect(page).to have_content 'Cosmo'
    expect(page).to have_no_content 'Car and Driver'
  end
end