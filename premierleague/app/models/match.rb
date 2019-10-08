# frozen_string_literal: true

class Match < ApplicationRecord
  self.primary_key = :MatchId
  has_many :clubs
  belongs_to :match_date, foreign_key: 'match_date_id'
  belongs_to :referee, foreign_key: 'referee_id'
  belongs_to :club, foreign_key: 'HomeTeam'
  belongs_to :club, foreign_key: 'AwayTeam'
  validates :Matchid, :HomeTeam, :AwayTeam, :HomeGoal, :AwayGoal, :match_date_id, :referee_id, presence: true
  validates :MatchId, :HomeGoal, :AwayGoal, :referee_id, numericality: { only_integer: true }
end
