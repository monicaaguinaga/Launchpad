class MeetupFormatter

  def format_time(event)
    Time.at(event["time"]/1000).strftime('%A, %B %d, %Y %I:%M %p')
  end

  def format_time_now
    Time.now.strftime('%A, %B %d, %Y %I:%M %p')

end
end
