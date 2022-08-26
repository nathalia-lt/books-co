class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :rating, :date, :text, :book_id, :book_name, :book_author
  has_one :user
  has_many :reactions
end