class StaticPagesController < ApplicationController
  before_action :logged_in_user, only: :songs

  def home
  end

  def songs
      require 'google/apis/youtube_v3'
      youtube = Google::Apis::YoutubeV3::YouTubeService.new
      youtube.key = "AIzaSyBZLo8NpskFXqqAAASUwOHuYpBf7XmP8TQ"
      youtube_search_list = youtube.list_searches("id,snippet", type: "video", q: "black music funk soul", max_results: 30)
      search_result = youtube_search_list.to_h
      @movies = search_result[:items]
  end

  def about
  end

  def contact
  end
end
