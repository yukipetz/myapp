class BasicPagesController < ApplicationController

  def home
  end

  def videos
    get_youtube
  end

  def about
  end

  def contact
  end
end
