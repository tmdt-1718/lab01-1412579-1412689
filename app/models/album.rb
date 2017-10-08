class Album < ApplicationRecord
    validates :name, presence: true
	
  belongs_to :user
  has_many: picture
end
