class GameSerializer < ActiveModel::Serializer
  belongs_to :quote
  attributes :id, :name, :quote_id

end
