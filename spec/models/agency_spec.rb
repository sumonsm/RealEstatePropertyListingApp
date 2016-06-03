require 'rails_helper'

RSpec.describe Agency, type: :model do
   it "is valid with title" do
     a = create(:agency)
     expect(a).to be_valid
   end

   it "is invalid without title" do
     a = build(:agency, :title => nil)
     expect(a).to have(1).errors_on(:title)
   end
end
