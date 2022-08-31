class Bookclub < ApplicationRecord
    has_many :clubusers, dependent: :destroy
    has_many :users, through: :clubusers

    validates :name, presence: true, uniqueness: true
end