require 'rails_helper'

RSpec.describe ElementsController, type: :controller do

  describe "GET forms" do
    before(:each) do
      get :forms
    end
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
    it "rendered using the correct template" do
      expect(response).to render_template("styleguide/elements/forms")
    end
  end

  describe "GET lists" do
    before(:each) do
      get :lists
    end
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
    it "rendered using the correct template" do
      expect(response).to render_template("styleguide/elements/lists")
    end
  end

  describe "GET media" do
    before(:each) do
      get :media
    end
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
    it "rendered using the correct template" do
      expect(response).to render_template("styleguide/elements/media")
    end
  end

  describe "GET table" do
    before(:each) do
      get :table
    end
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
    it "rendered using the correct template" do
      expect(response).to render_template("styleguide/elements/table")
    end
  end

end
