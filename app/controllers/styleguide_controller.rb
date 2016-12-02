class StyleguideController < ApplicationController
  layout "sub_layout"

  def index
  end

  def test
    render layout: "dyn_sub_layout"
  end

end
