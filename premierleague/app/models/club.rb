# frozen_string_literal: true

class Club < ApplicationRecord
  self.primary_key = :ClubName
  validates :ClubName, :Played, :Won, :Drawn, :Lost, :GoalFor, :GoalAgainst, :GoalDifference, :Point, presence: true
  validates :Played, :Won, :Drawn, :Lost, :GoalFor, :GoalAgainst, :GoalDifference, :Point, numericality: { only_integer: true }
  # belongs_to :match, foreign_key: 'HomeTeam'
  # belongs_to :match, foreign_key: 'AwayTeam'
end
