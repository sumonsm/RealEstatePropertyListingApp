require 'rails_helper'

feature 'cicking on agency name' do
  background do
    a1 = create(:agency,:title => 'Agency 6', :created_at => 6.days.ago)
    a2 = create(:agency,:title => 'Agency 5', :created_at => 5.days.ago)
    a3 = create(:agency,:title => 'Agency 4', :created_at => 4.days.ago)
    a4 = create(:agency,:title => 'Agency 3', :created_at => 3.days.ago)
    a5 = create(:agency,:title => 'Agency 2', :created_at => 2.days.ago)
    a6 = create(:agency,:title => 'Agency 1', :created_at => 1.day.ago)

    p1 = create(:property,:title => 'Property 6', :agency_id => a6.id, :created_at => 6.days.ago)
    p2 = create(:property,:title => 'Property 5', :agency_id => a6.id, :created_at => 5.days.ago)
    p3 = create(:property,:title => 'Property 4', :agency_id => a1.id, :created_at => 4.days.ago)
    p4 = create(:property,:title => 'Property 3', :agency_id => a3.id, :created_at => 3.days.ago)
    p5 = create(:property,:title => 'Property 2', :agency_id => a4.id, :created_at => 2.days.ago)
    p6 = create(:property,:title => 'Property 1', :agency_id => a6.id, :created_at => 1.day.ago)
  end

  it 'shows properties that belong to it in properties page' do
    visit '/'
    page.first(:link, 'Agency 1').click
    expect(page).to have_content 'Property 1'
    expect(page).not_to have_content 'Property 2'
    expect(page).not_to have_content 'Property 3'
    expect(page).not_to have_content 'Property 4'
    expect(page).to have_content 'Property 5'
    expect(page).to have_content 'Property 6'
  end
end
