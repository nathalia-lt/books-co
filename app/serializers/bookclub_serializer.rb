class BookclubSerializer < ActiveModel::Serializer
  attributes :id, :name, :books, :host, :description, :created_at, :image
  has_many :clubusers
end