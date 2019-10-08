# frozen_string_literal: true

class Match < ApplicationRecord
  self.primary_key = :MatchId
  has_many :clubs
  belongs_to :match_date, foreign_key: 'match_date_id'
  belongs_to :referee, foreign_key: 'referee_id'
  belongs_to :club, foreign_key: 'HomeTeam'
  belongs_to :club, foreign_key: 'AwayTeam'
end
