class QuoteSerializer < ActiveModel::Serializer
  has_many :games
  attributes :content, :author, :updated_at, :id

end
