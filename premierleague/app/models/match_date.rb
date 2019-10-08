# frozen_string_literal: true

class MatchDate < ApplicationRecord
  self.primary_key = :match_date_id
  has_many :matches
  validates :match_date_id, :Temperature, presence: true
  validates :Temperature, numericality: true
end
