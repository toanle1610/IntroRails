# frozen_string_literal: true

class Match < ApplicationRecord
  self.primary_key = :MatchId
  has_many :clubs
  belongs_to :match_date, foreign_key: 'Date'
  belongs_to :referee, foreign_key: 'RefereeId'
  belongs_to :match, foreign_key: 'HomeTeam'
  belongs_to :match, foreign_key: 'AwayTeam'
end
