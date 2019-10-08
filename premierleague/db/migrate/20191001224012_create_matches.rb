# frozen_string_literal: true

class CreateMatches < ActiveRecord::Migration[6.0]
  def change
    create_table :matches, id: false, primary_key: :MatchId do |t|
      t.integer :MatchId
      t.string :HomeTeam
      t.string :AwayTeam
      t.integer :HomeGoal
      t.integer :AwayGoal
      t.datetime :match_date_id
      t.integer :referee_id

      t.timestamps
    end
  end
end
