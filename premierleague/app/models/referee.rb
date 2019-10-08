# frozen_string_literal: true

class Referee < ApplicationRecord
  self.primary_key = :refereeid
  has_many :matchs
  validates :refereeid, :RefereeName, :Age, presence: true
  validates :Age, numericality: { only_integer: true }
end
