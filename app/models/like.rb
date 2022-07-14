class Like < ApplicationRecord
    belongs_to :user
    belongs_to :post

        # 投稿をいいね！している全てのユーザーを取得したい
    # def likes_to?(post)
    #     Like.exists?(user_id: this.id, post_id: post.id)
    # end
end
