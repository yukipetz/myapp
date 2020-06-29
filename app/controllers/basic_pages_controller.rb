class BasicPagesController < ApplicationController
  before_action :logged_in_user, only: :videos

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
