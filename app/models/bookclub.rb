class Bookclub < ApplicationRecord
    has_many :clubusers, dependent: :destroy
    has_many :users, through: :clubusers

    validates :host, presence: true
end