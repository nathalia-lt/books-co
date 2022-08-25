class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :first_name, :last_name, :profile_picture
  has_many :reviews
  has_many :clubusers
  has_many :shelves
  # has_many :bookclubs, through: :clubusers
end