require 'rails_helper'

RSpec.describe ElementsController, type: :controller do

  describe "GET #lists" do
    before(:each) do
      get :lists
    end
    it "returns http success" do
      expect(response).to have_http_status(:success) # :error :missing :redirect :success
    end
    it "rendered using the style guide template" do
      expect(response).to render_template("styleguide/elements/lists")
    end
  end

  describe "GET #table" do
    before(:each) do
      get :table
    end
    it "returns http success" do
      expect(response).to have_http_status(:success) # :error :missing :redirect :success
    end
    it "rendered using the style guide template" do
      expect(response).to render_template("styleguide/elements/table")
    end
  end

end
