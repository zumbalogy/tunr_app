require 'spec_helper'

describe BandsController do 
    describe "given a band" do
        before do
            @band = 'metalica'
        end
        describe 'new band page' do
            before do
                visit new_band_path
            end
            it 'fails' do
            end

        end
    end
end
