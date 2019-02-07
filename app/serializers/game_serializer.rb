class GameSerializer < ActiveModel::Serializer
  belongs_to :user
  belongs_to :quote
  attributes :id, :name, :score, :user_id, :quote_id

end
