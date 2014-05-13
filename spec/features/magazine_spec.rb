require 'spec_helper'

feature 'Displaying Magazine ads' do
  scenario 'A user can see all ads for a magazine' do
    cosmo = Magazine.create!(name: 'Cosmo')
    Ad.create!(manufacturer: 'Avon', magazine_id: cosmo.id)
    Ad.create!(manufacturer: 'Mabeline', magazine_id: cosmo.id)

    visit "/magazines/#{cosmo.id}"

    click_link "Ads"

    expect(page).to have_content "Avon"
    expect(page).to have_content "Mabeline"
  end
end