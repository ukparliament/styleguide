require 'rails_helper'

RSpec.describe "styleguide/templates/member_search_results.html.slim", type: :view do

  describe "GET member_search_results" do
    before(:each) do
      # you'll need to specify both the template and the layout explicitly
      render template: 'styleguide/templates/member_search_results', layout: 'layouts/sub_layout'
    end

    it "rendered layout partials" do
      expect(response.body).to render_template(partial: "_header")
      expect(response.body).to render_template(partial: "_nav_hr")
      expect(response.body).to render_template(partial: "_nav_vr_templates")
      expect(response.body).to render_template(partial: "_footer")
    end

    it "rendered page partials" do
      expect(response.body).to render_template(partial: "_member_search_results")
    end

    it "rendered view includes '#WordorPhrase'" do
      expect(response.body).to include("Members Search Results")
    end
  end

end
