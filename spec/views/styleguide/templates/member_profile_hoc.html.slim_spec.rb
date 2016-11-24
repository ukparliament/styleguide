require 'rails_helper'

RSpec.describe "styleguide/templates/member_profile_hoc.html.slim", type: :view do

  describe "GET #member_profile_hoc" do
    before(:each) do
      # you'll need to specify both the template and the layout explicitly
      render template: 'styleguide/templates/member_profile_hoc', layout: 'layouts/sub_layout'
    end
    # Repeat for each partial
    it "rendered partial" do
      expect(response.body).to render_template(partial: "_member_profile_hoc")
    end
    it "rendered partial" do
      expect(response.body).to render_template(partial: "_nav_hr")
    end
    it "rendered partial" do
      expect(response.body).to render_template(partial: "_nav_vr_templates")
    end
    it "rendered view includes '#WordorPhrase'" do
      expect(response.body).to include("House of Commons")
    end
  end

end
