require 'rails_helper'

RSpec.describe "styleguide/index.html.slim", type: :view do

  describe "GET #index" do
    before(:each) do
      # you'll need to specify both the template and the layout explicitly
      render template: 'styleguide/index', layout: 'layouts/sub_layout'
    end

    it "rendered layout partials" do
      expect(response.body).to render_template(partial: "_header")
      expect(response.body).to render_template(partial: "_nav_hr")
      expect(response.body).to render_template(partial: "_footer")
    end

    it "rendered view includes '#WordorPhrase'" do
      render
      expect(response.body).to include('UK Parliament Style Guide')
    end
  end

end
