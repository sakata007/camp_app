class Campsite < ApplicationRecord
    mount_uploader :image_name, ImageUploader

    has_many :campsite_likes, dependent: :destroy 

    # def self.looks(search, word)
    #     if search == "perfect_match"
    #         @campsite = Campsite.where("name LIKE?","#{word}")
    #     elsif search == "forward_match"
    #         @campsite = Campsite.where("name LIKE?","#{word}%")
    #     elsif search == "backward_match"
    #         @campsite = Campsite.where("name LIKE?","%#{word}")
    #     elsif search == "partial_match"
    #         @campsite = Campsite.where("name LIKE?","%#{word}%")
    #     else
    #         @campsite = Campsite.all
    #     end
    # end

    def is_liked_by?(user)
        self.campsite_likes.exists?(user_id: user.id)
    end
end
