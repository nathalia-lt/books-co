class ReactionSerializer < ActiveModel::Serializer
  attributes :id, :emoji
  has_one :user
  has_one :review
end
