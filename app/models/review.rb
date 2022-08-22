class Review < ApplicationRecord
  belongs_to :user
  has_many :reactions, dependent: :destroy
end