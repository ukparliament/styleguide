require 'rails_helper'

RSpec.describe "styleguide/elements/lists.html.slim", type: :view do

  describe "GET #a-z" do
    before(:each) do
      # you'll need to specify both the template and the layout explicitly
      render template: 'styleguide/elements/lists', layout: 'layouts/sub_layout'
    end

    it "rendered layout partials" do
      expect(response.body).to render_template(partial: "_header")
      expect(response.body).to render_template(partial: "_nav_hr")
      expect(response.body).to render_template(partial: "_nav_vr_elements")
      expect(response.body).to render_template(partial: "_footer")
    end

    it "rendered page partials" do
      expect(response.body).to render_template(partial: "_definitionlist")
      expect(response.body).to render_template(partial: "_orderedlist")
      expect(response.body).to render_template(partial: "_unorderedlist")
    end

    it "rendered view includes '#WordorPhrase'" do
      expect(response.body).to include("Lists")
    end
  end

end
