class Game < ApplicationRecord
  belongs_to :quote
  has_many :scores
end
