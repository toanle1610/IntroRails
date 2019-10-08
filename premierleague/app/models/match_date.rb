# frozen_string_literal: true

class MatchDate < ApplicationRecord
  self.primary_key = :match_date_id
  has_many :matches
end
