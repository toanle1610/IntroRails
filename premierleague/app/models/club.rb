# frozen_string_literal: true

class Club < ApplicationRecord
  self.primary_key = :ClubName
  # belongs_to :match, foreign_key: 'HomeTeam'
  # belongs_to :match, foreign_key: 'AwayTeam'
end
