require 'csv'
namespace :races do

  desc "Add Races from CSV"
  task :generate_races => :environment do
    CSV.foreach('./lib/tasks/races.csv', :headers => true) do |row|
      row_hash = row.to_h
      race = Race.new
      race.market_name = row_hash["TM Market Name"]
      race.weekend_name = row_hash["Weekend Name"]
      race.event_name = row_hash["Tough Mudder Event Name"]
      race.event_date = row_hash["Adjusted Start Date"]
      race.start_date = row_hash["Start Date/Time"]
      race.end_date = row_hash["End Date/Time"]
      race.venue = row_hash["Tough Mudder Venue: Tough Mudder Venue Name"]
      race.address_1 = row_hash["Tough Mudder Venue: Venue Address 1"]
      race.address_2 = row_hash["Tough Mudder Venue: Venue Address 2"]
      race.venue_city = row_hash["Tough Mudder Venue: Venue City"]
      race.venue_state = row_hash["Tough Mudder Venue: Venue State"]
      race.tm5k = row_hash["TM5K"]
      race.tmh = row_hash["TMH"]
      race.tmf = row_hash["TMF"]
      race.rtm = row_hash["RTM"]
      race.tmx = row_hash["TMX"]
      race.save!
    end
  end
end
