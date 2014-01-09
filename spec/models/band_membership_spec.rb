require 'spec_helper'



describe BandMembership do
    before do
        @musician = Musician.new
        @musician.name = 'richard'
        @musician.save
        @band = Band.new
        @band.name = 'the hedgclippers'
        @band.save
        @member = BandMembership.new
        @member.band_id = @band.id
        @member.musician_id = @musician.id
        @member.instrument = 'trumpet'
        @member.save
    end

    it 'makes bandmembership' do
        #binding.pry

        
        BandMembership.where(@member.musician_id == @musician.id).first.band_id.should == @band.id

    end

    it 'can find bands via musicians and vice versa' do
        @musician.bands.should include @band
        @band.musicians.should include @musician
        
    end


end





