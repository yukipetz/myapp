class BasicPagesController < ApplicationController
  before_action :logged_in_user, only: :songs

  def home
  end

  def movies
    get_youtube
  end

  def about
  end

  def contact
  end
end
