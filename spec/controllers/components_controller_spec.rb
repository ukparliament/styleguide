require 'rails_helper'

RSpec.describe ComponentsController, type: :controller do

  describe "GET a_z" do
    before(:each) do
      get :a_z
    end
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
    it "rendered using the correct template" do
      expect(response).to render_template("styleguide/components/a-z")
    end
  end

  describe "GET alert" do
    before(:each) do
      get :alert
    end
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
    it "rendered using the correct template" do
      expect(response).to render_template("styleguide/components/alert")
    end
  end

  describe "GET badges" do
    before(:each) do
      get :badges
    end
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
    it "rendered using the correct template" do
      expect(response).to render_template("styleguide/components/badges")
    end
  end

  describe "GET banners" do
    before(:each) do
      get :banners
    end
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
    it "rendered using the correct template" do
      expect(response).to render_template("styleguide/components/banners")
    end
  end

  describe "GET breadcrumb" do
    before(:each) do
      get :breadcrumb
    end
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
    it "rendered using the correct template" do
      expect(response).to render_template("styleguide/components/breadcrumb")
    end
  end

  describe "GET footer" do
    before(:each) do
      get :footer
    end
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
    it "rendered using the correct template" do
      expect(response).to render_template("styleguide/components/footer")
    end
  end

  describe "GET header" do
    before(:each) do
      get :header
    end
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
    it "rendered using the correct template" do
      expect(response).to render_template("styleguide/components/header")
    end
  end

  describe "GET pagination" do
    before(:each) do
      get :pagination
    end
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
    it "rendered using the correct template" do
      expect(response).to render_template("styleguide/components/pagination")
    end
  end

end
