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

feature 'show property page' do
  background do
    a1 = create(:agency, title: 'Agency 6', created_at: 6.days.ago)
    p1 = create(:property, title: 'Property 6', agency_id: a1.id,
      city: 'ny',
      property_type: 'rental',
      address: 'Apt.# 99, 99 Jumbo Street, Gotham City',
      price: '88888999.00',
      created_at: 6.days.ago,
      description: "Lorem ipsum dolor sit amet, vel purto dicam at, probo petentium persecuti ne his. Pro appareat periculis delicatissimi at, pro delenit omnesque cu. Ea vel nihil interpretaris, no insolens eleifend volutpat ius. Per ad etiam debet accusamus. No eum docendi abhorreant, everti conceptam scriptorem duo ei. Per audiam iuvaret adipiscing ad, esse autem dignissim no mea. Eos noluisse facilisi ei, ea zril assentior vix.

Et probo erant sea, mei vitae deterruisset eu. Ad sea aliquid repudiare gubergren, nam vero oblique intellegebat an, purto case mundi ad sit. Eam enim erant te, laoreet repudiare te mei. An pri bonorum perpetua pericula, solet laoreet conceptam usu ea.
")
  end

  it 'shows detailed property information for a property' do
    visit '/agencies/1/properties/1'
    expect(page).to have_content 'Property 6'
    expect(page).to have_content 'ny'
    expect(page).to have_content 'rental'
    expect(page).to have_content '99 Jumbo Street'
    expect(page).to have_content 'conceptam usu ea'
    expect(page).to have_content '88888999'
    expect(page).not_to have_content 'Property 1'
    expect(page).not_to have_content 'residential'
    expect(page).not_to have_content 'commercial'
  end
end
