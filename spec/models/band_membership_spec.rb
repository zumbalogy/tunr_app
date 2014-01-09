require 'spec_helper'



describe BandMembership do
    before do
        @musician = Musician.new
        @musician.name = 'richard'
        @musician.save
        @band = Band.new
        @band.name = 'the hedgclippers'
        @band.save
    end

    it 'makes bandmembership' do
        #binding.pry
        member = BandMembership.new
        member.band_id = @band.id
        member.musician_id = @musician.id
        member.instrument = 'trumpet'
        member.save

        
        BandMembership.where(member.musician_id == @musician.id).first.band_id.should == @band.id

    end


end





