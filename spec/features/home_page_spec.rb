require 'rails_helper'

feature 'home page' do
  scenario 'has headline' do
    visit '/'
    expect(page).to have_content("Agency List")
  end

  feature 'shows agency list' do
    background do
      a1 = create(:agency,:title => 'Agency 6', :created_at => 6.days.ago)
      a2 = create(:agency,:title => 'Agency 5', :created_at => 5.days.ago)
      a3 = create(:agency,:title => 'Agency 4', :created_at => 4.days.ago)
      a4 = create(:agency,:title => 'Agency 3', :created_at => 3.days.ago)
      a5 = create(:agency,:title => 'Agency 2', :created_at => 2.days.ago)
      a6 = create(:agency,:title => 'Agency 1', :created_at => 1.day.ago)
    end

    scenario 'Shows 5 Agencies on homepage' do
      visit '/'
      expect(page).to have_content 'Agency 1'
      expect(page).to have_content 'Agency 2'
      expect(page).to have_content 'Agency 3'
      expect(page).to have_content 'Agency 4'
      expect(page).to have_content 'Agency 5'
    end
  end
end
