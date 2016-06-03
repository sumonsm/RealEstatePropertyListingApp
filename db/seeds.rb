Property.destroy_all
Agency.destroy_all

a1 = Agency.create!(:title => 'Agency 1', :created_at => 11.days.ago)
a2 = Agency.create!(:title => 'Agency 2', :created_at => 10.days.ago)
a3 = Agency.create!(:title => 'Agency 3', :created_at => 10.days.ago)
a4 = Agency.create!(:title => 'Agency 4', :created_at => 9.days.ago)
a5 = Agency.create!(:title => 'Agency 5', :created_at => 8.days.ago)
a6 = Agency.create!(:title => 'Agency 6', :created_at => 7.days.ago)
a7 = Agency.create!(:title => 'Agency 7', :created_at => 7.days.ago)
a8 = Agency.create!(:title => 'Agency 8', :created_at => 5.days.ago)
a9 = Agency.create!(:title => 'Agency 9', :created_at => 5.days.ago)
a10 = Agency.create!(:title => 'Agency 10', :created_at => 3.days.ago)
a11 = Agency.create!(:title => 'Agency 11', :created_at => 2.days.ago)
a12 = Agency.create!(:title => 'Agency 12', :created_at => 1.days.ago)
a13 = Agency.create!(:title => 'Agency 13', :created_at => 1.days.ago)


p1 = Property.create!(title: 'Property 1', agency_id: a1.id,
  city: 'ny',
  property_type: 'rental',
  address: 'Apt.# 11, 11 Jumbo Street, Gotham City',
  price: '88888990.00',
  created_at: 4.days.ago,
  description: "Lorem ipsum dolor sit amet, vel purto dicam at, probo petentium persecuti ne his. Pro appareat periculis delicatissimi at, pro delenit omnesque cu. Ea vel nihil interpretaris, no insolens eleifend volutpat ius. Per ad etiam debet accusamus. No eum docendi abhorreant, everti conceptam scriptorem duo ei. Per audiam iuvaret adipiscing ad, esse autem dignissim no mea. Eos noluisse facilisi ei, ea zril assentior vix.

Et probo erant sea, mei vitae deterruisset eu. Ad sea aliquid repudiare gubergren, nam vero oblique intellegebat an, purto case mundi ad sit. Eam enim erant te, laoreet repudiare te mei. An pri bonorum perpetua pericula, solet laoreet conceptam usu ea.
")



p2 = Property.create!(title: 'Property 2', agency_id: a1.id,
  city: 'ny',
  property_type: 'rental',
  address: 'Apt.# 11, 11 Jumbo Street, Gotham City',
  price: '88888990.00',
  created_at: 4.days.ago,
  description: "Lorem ipsum dolor sit amet, vel purto dicam at, probo petentium persecuti ne his. Pro appareat periculis delicatissimi at, pro delenit omnesque cu. Ea vel nihil interpretaris, no insolens eleifend volutpat ius. Per ad etiam debet accusamus. No eum docendi abhorreant, everti conceptam scriptorem duo ei. Per audiam iuvaret adipiscing ad, esse autem dignissim no mea. Eos noluisse facilisi ei, ea zril assentior vix.

Et probo erant sea, mei vitae deterruisset eu. Ad sea aliquid repudiare gubergren, nam vero oblique intellegebat an, purto case mundi ad sit. Eam enim erant te, laoreet repudiare te mei. An pri bonorum perpetua pericula, solet laoreet conceptam usu ea.
")


p3 = Property.create!(title: 'Property 5', agency_id: a1.id,
  city: 'ny',
  property_type: 'rental',
  address: 'Apt.# 11, 11 Jumbo Street, Gotham City',
  price: '88888990.00',
  created_at: 4.days.ago,
  description: "Lorem ipsum dolor sit amet, vel purto dicam at, probo petentium persecuti ne his. Pro appareat periculis delicatissimi at, pro delenit omnesque cu. Ea vel nihil interpretaris, no insolens eleifend volutpat ius. Per ad etiam debet accusamus. No eum docendi abhorreant, everti conceptam scriptorem duo ei. Per audiam iuvaret adipiscing ad, esse autem dignissim no mea. Eos noluisse facilisi ei, ea zril assentior vix.

Et probo erant sea, mei vitae deterruisset eu. Ad sea aliquid repudiare gubergren, nam vero oblique intellegebat an, purto case mundi ad sit. Eam enim erant te, laoreet repudiare te mei. An pri bonorum perpetua pericula, solet laoreet conceptam usu ea.
")


p4 = Property.create!(title: 'Property 6', agency_id: a1.id,
  city: 'ny',
  property_type: 'rental',
  address: 'Apt.# 11, 11 Jumbo Street, Gotham City',
  price: '88888990.00',
  created_at: 4.days.ago,
  description: "Lorem ipsum dolor sit amet, vel purto dicam at, probo petentium persecuti ne his. Pro appareat periculis delicatissimi at, pro delenit omnesque cu. Ea vel nihil interpretaris, no insolens eleifend volutpat ius. Per ad etiam debet accusamus. No eum docendi abhorreant, everti conceptam scriptorem duo ei. Per audiam iuvaret adipiscing ad, esse autem dignissim no mea. Eos noluisse facilisi ei, ea zril assentior vix.

Et probo erant sea, mei vitae deterruisset eu. Ad sea aliquid repudiare gubergren, nam vero oblique intellegebat an, purto case mundi ad sit. Eam enim erant te, laoreet repudiare te mei. An pri bonorum perpetua pericula, solet laoreet conceptam usu ea.
")


p5 = Property.create!(title: 'Property 7', agency_id: a1.id,
  city: 'ny',
  property_type: 'rental',
  address: 'Apt.# 11, 11 Jumbo Street, Gotham City',
  price: '88888990.00',
  created_at: 4.days.ago,
  description: "Lorem ipsum dolor sit amet, vel purto dicam at, probo petentium persecuti ne his. Pro appareat periculis delicatissimi at, pro delenit omnesque cu. Ea vel nihil interpretaris, no insolens eleifend volutpat ius. Per ad etiam debet accusamus. No eum docendi abhorreant, everti conceptam scriptorem duo ei. Per audiam iuvaret adipiscing ad, esse autem dignissim no mea. Eos noluisse facilisi ei, ea zril assentior vix.

Et probo erant sea, mei vitae deterruisset eu. Ad sea aliquid repudiare gubergren, nam vero oblique intellegebat an, purto case mundi ad sit. Eam enim erant te, laoreet repudiare te mei. An pri bonorum perpetua pericula, solet laoreet conceptam usu ea.
")


p6 = Property.create!(title: 'Property 8', agency_id: a1.id,
  city: 'ny',
  property_type: 'rental',
  address: 'Apt.# 11, 11 Jumbo Street, Gotham City',
  price: '88888990.00',
  created_at: 4.days.ago,
  description: "Lorem ipsum dolor sit amet, vel purto dicam at, probo petentium persecuti ne his. Pro appareat periculis delicatissimi at, pro delenit omnesque cu. Ea vel nihil interpretaris, no insolens eleifend volutpat ius. Per ad etiam debet accusamus. No eum docendi abhorreant, everti conceptam scriptorem duo ei. Per audiam iuvaret adipiscing ad, esse autem dignissim no mea. Eos noluisse facilisi ei, ea zril assentior vix.

Et probo erant sea, mei vitae deterruisset eu. Ad sea aliquid repudiare gubergren, nam vero oblique intellegebat an, purto case mundi ad sit. Eam enim erant te, laoreet repudiare te mei. An pri bonorum perpetua pericula, solet laoreet conceptam usu ea.
")


p7 = Property.create!(title: 'Property 9', agency_id: a1.id,
  city: 'ny',
  property_type: 'rental',
  address: 'Apt.# 11, 11 Jumbo Street, Gotham City',
  price: '88888990.00',
  created_at: 4.days.ago,
  description: "Lorem ipsum dolor sit amet, vel purto dicam at, probo petentium persecuti ne his. Pro appareat periculis delicatissimi at, pro delenit omnesque cu. Ea vel nihil interpretaris, no insolens eleifend volutpat ius. Per ad etiam debet accusamus. No eum docendi abhorreant, everti conceptam scriptorem duo ei. Per audiam iuvaret adipiscing ad, esse autem dignissim no mea. Eos noluisse facilisi ei, ea zril assentior vix.

Et probo erant sea, mei vitae deterruisset eu. Ad sea aliquid repudiare gubergren, nam vero oblique intellegebat an, purto case mundi ad sit. Eam enim erant te, laoreet repudiare te mei. An pri bonorum perpetua pericula, solet laoreet conceptam usu ea.
")


p8 = Property.create!(title: 'Property 10', agency_id: a1.id,
  city: 'ny',
  property_type: 'rental',
  address: 'Apt.# 11, 11 Jumbo Street, Gotham City',
  price: '88888990.00',
  created_at: 4.days.ago,
  description: "Lorem ipsum dolor sit amet, vel purto dicam at, probo petentium persecuti ne his. Pro appareat periculis delicatissimi at, pro delenit omnesque cu. Ea vel nihil interpretaris, no insolens eleifend volutpat ius. Per ad etiam debet accusamus. No eum docendi abhorreant, everti conceptam scriptorem duo ei. Per audiam iuvaret adipiscing ad, esse autem dignissim no mea. Eos noluisse facilisi ei, ea zril assentior vix.

Et probo erant sea, mei vitae deterruisset eu. Ad sea aliquid repudiare gubergren, nam vero oblique intellegebat an, purto case mundi ad sit. Eam enim erant te, laoreet repudiare te mei. An pri bonorum perpetua pericula, solet laoreet conceptam usu ea.
")


p9 = Property.create!(title: 'Property 11', agency_id: a2.id,
  city: 'ny',
  property_type: 'rental',
  address: 'Apt.# 11, 11 Jumbo Street, Gotham City',
  price: '88888990.00',
  created_at: 4.days.ago,
  description: "Lorem ipsum dolor sit amet, vel purto dicam at, probo petentium persecuti ne his. Pro appareat periculis delicatissimi at, pro delenit omnesque cu. Ea vel nihil interpretaris, no insolens eleifend volutpat ius. Per ad etiam debet accusamus. No eum docendi abhorreant, everti conceptam scriptorem duo ei. Per audiam iuvaret adipiscing ad, esse autem dignissim no mea. Eos noluisse facilisi ei, ea zril assentior vix.

Et probo erant sea, mei vitae deterruisset eu. Ad sea aliquid repudiare gubergren, nam vero oblique intellegebat an, purto case mundi ad sit. Eam enim erant te, laoreet repudiare te mei. An pri bonorum perpetua pericula, solet laoreet conceptam usu ea.
")

puts "Seeding.... done"
