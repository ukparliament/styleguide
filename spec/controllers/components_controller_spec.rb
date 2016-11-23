require 'rails_helper'

RSpec.describe ComponentsController, type: :controller do

  describe "GET #breadcrumb" do
    before(:each) do
      get :breadcrumb
    end
    it "returns http success" do
      expect(response).to have_http_status(:success) # :error :missing :redirect :success
    end
    it "rendered using the style guide template" do
      expect(response).to render_template("layouts/sub_layout")
    end

  end

  describe "GET #footer" do
    before(:each) do
      get :footer
    end
    it "returns http success" do
      expect(response).to have_http_status(:success) # :error :missing :redirect :success
    end
    it "rendered using the style guide template" do
      expect(response).to render_template("layouts/sub_layout")
    end

  end

  describe "GET #header" do
    before(:each) do
      get :header
    end
    it "returns http success" do
      expect(response).to have_http_status(:success) # :error :missing :redirect :success
    end
    it "rendered using the style guide template" do
      expect(response).to render_template("layouts/sub_layout")
    end

  end

  describe "GET #panel" do
    before(:each) do
      get :panel
    end
    it "returns http success" do
      expect(response).to have_http_status(:success) # :error :missing :redirect :success
    end
    it "rendered using the style guide template" do
      expect(response).to render_template("layouts/sub_layout")
    end
  end

end
