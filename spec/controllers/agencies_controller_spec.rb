require 'rails_helper'

RSpec.describe AgenciesController, type: :controller do
  describe "GET 'index'" do
      it "delivers the latest 5 listings" do
        a1 = create(:agency,:created_at => 6.days.ago)
        a2 = create(:agency,:created_at => 5.days.ago)
        a3 = create(:agency,:created_at => 4.days.ago)
        a4 = create(:agency,:created_at => 3.days.ago)
        a5 = create(:agency,:created_at => 2.days.ago)
        a6 = create(:agency,:created_at => 1.day.ago)
        get 'index'
        expect(assigns(:agencies)).to match_array [a2,a3,a4,a5,a6]
      end
    end
end
