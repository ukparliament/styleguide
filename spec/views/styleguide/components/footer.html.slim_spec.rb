require 'rails_helper'

RSpec.describe "styleguide/components/footer.html.slim", type: :view do

  describe "GET #footer" do
    before(:each) do
      # you'll need to specify both the template and the layout explicitly
      render template: 'styleguide/components/footer', layout: 'layouts/sub_layout'
    end
    # Repeat for each partial
    it "rendered partial" do
      expect(response.body).to render_template(partial: "_footer")
    end
    it "rendered partial" do
      expect(response.body).to render_template(partial: "_nav_hr")
    end
    it "rendered partial" do
      expect(response.body).to render_template(partial: "_nav_vr_components")
    end
    it "rendered view includes '#WordorPhrase'" do
      expect(response.body).to include("Footer")
    end
  end

end
