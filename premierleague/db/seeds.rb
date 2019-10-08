# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'
require 'faker'
require 'date'

path = File.join(File.dirname(__FILE__), 'clubs.json')
json_from_club = File.open(path, 'r:bom|utf-8').read
hash_content_club = JSON.parse(json_from_club)

path_match = File.join(File.dirname(__FILE__), 'matches1819.json')
json_from_match = File.open(path_match, 'r:bom|utf-8').read
hash_content_match = JSON.parse(json_from_match)

puts 'Start loading data'

hash_content_club.each do |club|
  newdata = Club.create(
    ClubName: club['Club'],
    Played: club['Played'].to_i,
    Won: club['Won'].to_i,
    Drawn: club['Drawn'].to_i,
    Lost: club['Lost'].to_i,
    GoalFor: club['Goal For'].to_i,
    GoalAgainst: club['Goal Against'].to_i,
    GoalDifference: club['Goal Difference'].to_i,
    Point: club['Points'].to_i
  )
end

matchId = 1
refereeId = 1
hash_content_match.each do |match|
  new_referee = Referee.where('RefereeName = ?', match['Referee'])

  if new_referee.empty?

    Referee.create(
      refereeid: refereeId,
      RefereeName: match['Referee'],
      Age: Faker::Number.between(from: 22, to: 50)
    )
    refereeId += 1
  end

  new_date = MatchDate.where('Date = ?', DateTime.parse(match['Date']))

  if new_date.empty?

    MatchDate.create(
      Date: match['Date'],
      Temperature: Faker::Number.between(from: 10, to: 35)
    )
  end
  Match.create(
    MatchId: matchId,
    HomeTeam: match['HomeTeam'],
    AwayTeam: match['AwayTeam'],
    HomeGoal: match['FTHG'].to_i,
    AwayGoal: match['FTAG'].to_i,
    Date: match['Date'],
    referee_id: Referee.where('RefereeName = ?', match['Referee']).first.refereeid
  )
  matchId += 1
end

puts 'Finished loading data'
