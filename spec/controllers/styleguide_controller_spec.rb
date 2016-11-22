require 'rails_helper'

RSpec.describe StyleguideController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success) # :error :missing :redirect :success
    end

    it "rendered using the style guide template" do
      get :index
      expect(response).to render_template("layouts/sub_layout")
    end
  end

end
