class User < ApplicationRecord
    validates :username, :email, presence: true
    validates :username, :email, uniqueness: true
    has_secure_password
    has_many :lists
end