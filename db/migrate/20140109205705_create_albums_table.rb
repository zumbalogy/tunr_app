class CreateAlbumsTable < ActiveRecord::Migration
  def change
    create_table :albums do |t|
        t.integer :band_id
        t.string :name
        t.integer :year
        t.timestamps

    end
end
end
