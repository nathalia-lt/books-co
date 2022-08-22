class ClubuserSerializer < ActiveModel::Serializer
  attributes :id
  has_one :user
  has_one :bookclub
end