# frozen_string_literal: true

class CreateMatchDates < ActiveRecord::Migration[6.0]
  def change
    create_table :match_dates, id: false, primary_key: :Date do |t|
      t.datetime :Date
      t.integer :Temperature

      t.timestamps
    end
  end
end
