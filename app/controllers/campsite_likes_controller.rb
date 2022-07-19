class CampsiteLikesController < ApplicationController
  def index
    # @post = Post.find_by(id: params[:post_id])
    # @users = User.campsite_likes_to?(@post).all
    @campsite_likes = CampsiteLike.where(campsite_id: params[:campsite_id])
  end

  def create
    campsite = Campsite.find_by(id: params[:campsite_id])
    campsite_like = CampsiteLike.new(user_id: current_user.id, campsite_id: campsite.id)
    campsite_like.save
    redirect_back(fallback_location: campsite_path(campsite))
  end

  def destroy
    campsite = Campsite.find_by(id: params[:campsite_id])
    campsite_like = CampsiteLike.find_by(user_id: current_user.id, campsite_id: campsite.id)
    campsite_like.destroy
    redirect_back(fallback_location: campsite_path(campsite))
  end

end
