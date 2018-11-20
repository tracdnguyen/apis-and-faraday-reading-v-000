class SearchesController < ApplicationController
  def search
  end


  def foursquare
     @resp = Faraday.get 'https://api.foursquare.com/v2/venues/search' do |req|
       req.params['client_id'] = 'EZ53DINRDTZ2D11U4KTJ31VFAEISMMT0IF15XLRZSPR0ZJR5'
       req.params['client_secret'] = 'IETFIW2O1KRWLAISFWV5JUARD5IUBVXIWPNSP050FFTQMMAU'
       req.params['v'] = '20160201'
       req.params['near'] = params[:zipcode]
       req.params['query'] = 'coffee shop'
     end
     render 'search'
   end

end