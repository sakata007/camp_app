class LikesController < ApplicationController
    def index
        # @post = Post.find_by(id: params[:post_id])
        # @users = User.likes_to?(@post).all
        @likes = Like.where(post_id: params[:post_id])
    end

    def create
        post = Post.find_by(id: params[:post_id])
        like = Like.new(user_id: current_user.id, post_id: post.id)
        like.save
        redirect_back(fallback_location: post_path(post))
    end
    
    def destroy
        post = Post.find_by(id: params[:post_id])
        like = Like.find_by(user_id: current_user.id, post_id: post.id)
        like.destroy
        redirect_back(fallback_location: post_path(post))
    end
end
