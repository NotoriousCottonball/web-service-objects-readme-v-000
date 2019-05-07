class SearchesController < ApplicationController

  def search
  end

  def friends
    foursquare = FoursquareService.new
    @friends = foursquare.friends(session[:token])
  end
  
  def foursquare
  
    foursquare = FoursquareService.new
	    body = foursquare.foursquare(ENV['FOURSQUARE_CLIENT_ID'], ENV['FOURSQUARE_CLIENT_SECRET'], params[:zipcode])
end
