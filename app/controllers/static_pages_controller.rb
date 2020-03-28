class StaticPagesController < ApplicationController
  def index
  end

  def venue_specifications
    render layout: false
  end

  def photographer_specifications
    render layout: false
  end

  def florist_specifications
    render layout: false
  end
end
