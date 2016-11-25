require 'rails_helper'

RSpec.describe "styleguide/components/breadcrumb.html.slim", type: :view do

  describe "GET #breadcrumb" do
    before(:each) do
      # you'll need to specify both the template and the layout explicitly
      render template: 'styleguide/components/breadcrumb', layout: 'layouts/sub_layout'
    end
    # Repeat for each partial
    it "rendered partial" do
      expect(response.body).to render_template(partial: "_header")
    end
    it "rendered partial" do
      expect(response.body).to render_template(partial: "_nav_hr")
    end
    it "rendered partial" do
      expect(response.body).to render_template(partial: "_nav_vr_components")
    end
    it "rendered view includes '#WordorPhrase'" do
      expect(response.body).to include("Breadcrumb")
    end
  end

end
