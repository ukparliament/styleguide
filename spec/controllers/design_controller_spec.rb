require 'rails_helper'

RSpec.describe DesignController, type: :controller do

  describe "GET colours" do
    before(:each) do
      get :colours
    end
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
    it "rendered using the correct template" do
      expect(response).to render_template("styleguide/design/colours")
    end
  end

  describe "GET typography" do
    before(:each) do
      get :typography
    end
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
    it "rendered using the correct template" do
      expect(response).to render_template("styleguide/design/typography")
    end
  end

end
