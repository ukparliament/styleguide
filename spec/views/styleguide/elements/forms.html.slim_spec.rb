require 'rails_helper'

RSpec.describe "styleguide/elements/forms.html.slim", type: :view do

  describe "GET #a-z" do
    before(:each) do
      # you'll need to specify both the template and the layout explicitly
      render template: 'styleguide/elements/forms', layout: 'layouts/sub_layout'
    end

    it "rendered layout partials" do
      expect(response.body).to render_template(partial: "_header")
      expect(response.body).to render_template(partial: "_nav_hr")
      expect(response.body).to render_template(partial: "_nav_vr_elements")
      expect(response.body).to render_template(partial: "_footer")
    end

    it "rendered page partials" do
      expect(response.body).to render_template(partial: "_labels")
      expect(response.body).to render_template(partial: "_hint")
      expect(response.body).to render_template(partial: "_input")
      expect(response.body).to render_template(partial: "_select")
      expect(response.body).to render_template(partial: "_checkbox")
      expect(response.body).to render_template(partial: "_radio")
      expect(response.body).to render_template(partial: "_file")
      expect(response.body).to render_template(partial: "_textarea")
      expect(response.body).to render_template(partial: "_button")
    end

    it "rendered view includes '#WordorPhrase'" do
      expect(response.body).to include("Forms")
    end
  end

end
