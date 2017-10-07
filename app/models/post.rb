class Post < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true
  validates :slug, presence: true
  validates :slug, presence: true
  
  mount_uploader :thumbnail, ImageUploader
  extend FriendlyId
  friendly_id :title, use: [:slugged]

  belongs_to :user, optional: true
  has_many :comment
end
