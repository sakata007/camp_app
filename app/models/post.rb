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


end
