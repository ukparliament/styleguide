require 'rails_helper'

RSpec.describe "styleguide/components/banners.html.slim", type: :view do

  describe "GET banners" do
    before(:each) do
      # you'll need to specify both the template and the layout explicitly
      render template: 'styleguide/components/banners', layout: 'layouts/sub_layout'
    end

    it "rendered layout partials" do
      expect(response.body).to render_template(partial: "_header")
      expect(response.body).to render_template(partial: "_nav_hr")
      expect(response.body).to render_template(partial: "_nav_vr_components")
      expect(response.body).to render_template(partial: "_footer")
    end

    it "rendered page partials" do
      expect(response.body).to render_template(partial: "_global_msg")
      expect(response.body).to render_template(partial: "_phase_banner")
    end

    it "rendered view includes '#WordorPhrase'" do
      expect(response.body).to include("Banners")
    end
  end

end
