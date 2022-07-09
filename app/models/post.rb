class Post < ApplicationRecord
    mount_uploader :image_name, ImageUploader

    def user
        return User.find_by(id:self.user_id)
    end
end
