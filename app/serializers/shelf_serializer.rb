class ShelfSerializer < ActiveModel::Serializer
  attributes :id, :name, :books
  has_one :user
end