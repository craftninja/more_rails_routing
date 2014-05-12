require 'spec_helper'

feature "Admin section of the site" do
  scenario 'User can see the admin section of the site' do
    visit '/admin/home'

    expect(page).to have_content 'Welcome to the admin section of your site!'
  end
end