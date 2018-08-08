json.extract! race, :id, :market_name, :weekend_name, :event_name, :event_date, :start_date, :end_date, :venue, :address_1, :address_2, :venue_city, :venue_state, :tm5k, :tmh, :tmf, :rtm, :tmx, :created_at, :updated_at
json.url race_url(race, format: :json)
