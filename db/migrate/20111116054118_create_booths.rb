class CreateBooths < ActiveRecord::Migration
  def change
    create_table :booths do |t|
      t.string :district
      t.integer :booth_station_no
      t.integer :booth_no
      t.string :description

      t.timestamps
    end
  end
end
