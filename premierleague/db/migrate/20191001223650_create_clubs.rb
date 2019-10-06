# frozen_string_literal: true

class CreateClubs < ActiveRecord::Migration[6.0]
  def change
    create_table :clubs, id: false, primary_key: :ClubName do |t|
      t.string :ClubName, null: false
      t.integer :Played
      t.integer :Won
      t.integer :Drawn
      t.integer :Lost
      t.integer :GoalFor
      t.integer :GoalAgainst
      t.integer :GoalDifference
      t.integer :Point

      t.timestamps
    end
  end
end
