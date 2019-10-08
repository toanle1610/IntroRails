# frozen_string_literal: true

class Referee < ApplicationRecord
  self.primary_key = :refereeid
  has_many :matchs
end
