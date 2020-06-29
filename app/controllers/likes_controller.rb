class LikesController < ApplicationController
  before_action :logged_in_user

  def create
    @video_id = params[:video_id]
    @like = Like.create(user_id: params[:user_id], video_id: params[:video_id])
    flash[:success] = "Added to your Playlist!!"
    redirect_to videos_path
    # respond_to do |format|
    #   format.html { render template: "static_pages/songs", locals: {like: @like} }
    #   format.js
    # end
  end

  def destroy
    @video_id = params[:video_id]
    @like = Like.find_by(user_id: params[:user_id], video_id: params[:video_id])
    @like.destroy
    flash[:success] = "Deleted from your Playlist."
    redirect_to user_path(current_user)
  end
end
