# frozen_string_literal: true

class CreateReferees < ActiveRecord::Migration[6.0]
  def change
    create_table :referees, id: false, primary_key: :RefereeId do |t|
      t.integer :RefereeId
      t.string :RefereeName
      t.integer :Age

      t.timestamps
    end
  end
end
