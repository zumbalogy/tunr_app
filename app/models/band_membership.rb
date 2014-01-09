class BandMembership < ActiveRecord::Base
    belongs_to :musician
    belongs_to :band

   # attr_accessor :band_id, :musician_id, :instrument

end
    