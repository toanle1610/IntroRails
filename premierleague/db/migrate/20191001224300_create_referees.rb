# frozen_string_literal: true

class CreateReferees < ActiveRecord::Migration[6.0]
  def change
    create_table :referees, id: false, primary_key: :refereeid do |t|
      t.integer :refereeid
      t.string :RefereeName
      t.integer :Age

      t.timestamps
    end
  end
end
