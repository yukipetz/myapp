class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  private

    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end

    def get_youtube
      require 'google/apis/youtube_v3'
      youtube = Google::Apis::YoutubeV3::YouTubeService.new
      youtube.key = "AIzaSyBZLo8NpskFXqqAAASUwOHuYpBf7XmP8TQ"
      youtube_search_list = youtube.list_searches("id,snippet", type: "video", q: "stand-up comedy English", max_results: 18)
      search_result = youtube_search_list.to_h
      @videos = search_result[:items]
    end
end
