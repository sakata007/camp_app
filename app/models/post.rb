class Post < ApplicationRecord
    mount_uploader :image_name, ImageUploader
    belongs_to :user
    has_many :likes, dependent: :destroy

    def user
        return User.find_by(id:self.user_id)
    end

    def liked_by?(user)
        self.likes.exists?(user_id: user.id)
    end

    # def likes_to?(post)
    #     Like.exists?(user_id: this.id, post_id: post.id)
    # end

    # 検索機能
    def self.looks(search, word)
        if search == "perfect_match"
            @post = Post.where("title LIKE?", "#{word}")
        elsif search == "forward_match"
            @post = Post.where("title LIKE?","#{word}%")
        elsif search == "backward_match"
            @post = Post.where("title LIKE?","%#{word}")
        elsif search == "partial_match"
            @post = Post.where("title LIKE?","%#{word}%")
        else
            @post = Post.all
        end
    end


end
