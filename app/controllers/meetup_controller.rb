require 'MeetupFormatter'

class MeetupController < ApplicationController
  def index
    @current_time = Time.now.strftime('%A, %B %d, %Y %I:%M %p')


    @quote = HTTParty.get("http://quotesondesign.com/wp-json/posts?filter[orderby]=rand&filter[posts_per_page]=1")

    zip = params[:zip] || "33010"

    params = { category: '34',
      # city: 'Miami',
      zip: zip,
      status: 'upcoming',
      format: 'json',
      radius: '25.0',
      page: '10',
     }
   meetup_api = MeetupApi.new
   @events = meetup_api.open_events(params)
   @results = @events["results"]
   @formatter = MeetupFormatter.new
  end


end
