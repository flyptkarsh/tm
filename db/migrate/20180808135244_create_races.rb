class CreateRaces < ActiveRecord::Migration
  def change
    create_table :races do |t|
      t.string :market_name
      t.string :weekend_name
      t.string :event_name
      t.string :event_date
      t.string :start_date
      t.string :end_date
      t.string :venue
      t.string :address_1
      t.string :address_2
      t.string :venue_city
      t.string :venue_state
      t.string :tm5k
      t.string :tmh
      t.string :tmf
      t.string :rtm
      t.string :tmx

      t.timestamps null: false
    end
  end
end
