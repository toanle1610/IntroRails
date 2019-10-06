# frozen_string_literal: true

class Referee < ApplicationRecord
  self.primary_key = :RefereeId
  has_many :matchs
end
