class ScoreSerializer < ActiveModel::Serializer
  belongs_to :game
  attributes :game_id, :score, :username, :id


end
