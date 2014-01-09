class CreateBandMemberships < ActiveRecord::Migration
  def up
    create_table :band_memberships do |t|
        t.integer :musician_id
        t.integer :band_id
        t.string :instrument

        t.timestamps
    end
  end

  def down
    drop_table :band_memberships
  end
end
