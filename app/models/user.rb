require 'bcrypt'

class User < ApplicationRecord
    has_secure_password

    validates :username, presence: true
	validates :password_digest, presence: true
    validates :fullname, presence: true
    validates :email, presence: true
    validates_confirmation_of :password

    has_many :comment
    has_many :album
    has_many :post

    
end
