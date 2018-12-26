class Pet < ActiveRecord::Base
    validates :name, presence: true, length: {maximum: 50}
    validates :animal, presence: true, length: {maximum: 50}
    validates :age, presence: true, length: {maximum: 20}
    validates :description, presence: true, length: {maximum: 400}
    validates :user_id, presence:true
    mount_uploader :image, ImageUploader
    belongs_to :user
end
