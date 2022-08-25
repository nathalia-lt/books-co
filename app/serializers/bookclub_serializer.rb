class BookclubSerializer < ActiveModel::Serializer
  attributes :id, :name, :books, :host, :description, :created_at
  has_many :clubusers
end