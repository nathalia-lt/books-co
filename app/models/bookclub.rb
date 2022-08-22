class Bookclub < ApplicationRecord
    has_many :clubusers, dependent: :destroy
    has_many :users, through: :clubusers
end