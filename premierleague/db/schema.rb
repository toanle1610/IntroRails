# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_10_01_230022) do

  create_table "clubs", id: false, force: :cascade do |t|
    t.string "ClubName", null: false
    t.integer "Played"
    t.integer "Won"
    t.integer "Drawn"
    t.integer "Lost"
    t.integer "GoalFor"
    t.integer "GoalAgainst"
    t.integer "GoalDifference"
    t.integer "Point"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "match_dates", id: false, force: :cascade do |t|
    t.datetime "Date"
    t.integer "Temperature"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "matches", id: false, force: :cascade do |t|
    t.integer "MatchId"
    t.string "HomeTeam"
    t.string "AwayTeam"
    t.integer "HomeGoal"
    t.integer "AwayGoal"
    t.datetime "Date"
    t.integer "RefereeId"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "referees", id: false, force: :cascade do |t|
    t.integer "RefereeId"
    t.string "RefereeName"
    t.integer "Age"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
