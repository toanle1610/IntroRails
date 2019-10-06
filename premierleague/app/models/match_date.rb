class MatchDate < ApplicationRecord
  self.primary_key = :Date
  has_many :matches
end
