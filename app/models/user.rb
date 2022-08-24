class User < ApplicationRecord
    has_many :reviews, dependent: :destroy
    has_many :clubusers, dependent: :destroy
    has_many :bookclubs, through: :bookclubs
    has_many :shelves
    has_secure_password

    validates :username, presence: true, uniqueness: true, length: {minimum: 4}, allow_blank: false
    validates :first_name, presence: true, allow_blank: false
    validates :last_name, presence: true, allow_blank: false

end