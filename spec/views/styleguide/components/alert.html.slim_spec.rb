require 'rails_helper'

RSpec.describe "styleguide/components/alert.html.slim", type: :view do

  describe "GET alert" do
    before(:each) do
      # you'll need to specify both the template and the layout explicitly
      render template: 'styleguide/components/alert', layout: 'layouts/sub_layout'
    end

    it "rendered layout partials" do
      expect(response.body).to render_template(partial: "_header")
      expect(response.body).to render_template(partial: "_nav_hr")
      expect(response.body).to render_template(partial: "_nav_vr_components")
      expect(response.body).to render_template(partial: "_footer")
    end

    it "rendered page partials" do
      expect(response.body).to render_template(partial: "_standard")
      expect(response.body).to render_template(partial: "_information")
      expect(response.body).to render_template(partial: "_success")
      expect(response.body).to render_template(partial: "_warning")
      expect(response.body).to render_template(partial: "_error")
    end

    it "rendered view includes '#WordorPhrase'" do
      expect(response.body).to include("Alert")
    end
  end

end
