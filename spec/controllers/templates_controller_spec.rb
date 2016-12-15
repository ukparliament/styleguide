require 'rails_helper'

RSpec.describe TemplatesController, type: :controller do

  describe "GET member_profile_hoc" do
    before(:each) do
      get :member_profile_hoc
    end
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
    it "rendered using the correct template" do
      expect(response).to render_template("styleguide/templates/member_profile_hoc")
    end
  end

  describe "GET member_profile_hol" do
    before(:each) do
      get :member_profile_hol
    end
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
    it "rendered using the correct template" do
      expect(response).to render_template("styleguide/templates/member_profile_hol")
    end
  end

  describe "GET member_search_results" do
    before(:each) do
      get :member_search_results
    end
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
    it "rendered using the correct template" do
      expect(response).to render_template("styleguide/templates/member_search_results")
    end
  end

end
