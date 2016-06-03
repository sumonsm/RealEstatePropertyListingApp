require 'rails_helper'

feature 'home page' do
  scenario 'property list' do
    visit '/'
    expect(page).to have_content("Property List")
  end
end
