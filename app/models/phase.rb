class Phase < ActiveRecord::Base
  
  # Helper to get a tuple of formatted time range.
  def self.get_time_range(start_time, sleep_length)
  	return [ start_time.strftime("%I:%M %p"),
  			 (start_time + sleep_length).strftime("%I:%M %p") ]
  end

  # Method to return all of the sleeping times.
  def get_sleep_times(h, m, mr, format=true)
  	times = []

  	# Adjust meridian.
  	if mr == "PM" then h += 12 end

  	# Set up timer to count through sleep times.
  	timer = Time.new.midnight
  	timer += h.hours + m.minutes

  	if self.nap_count == 0
      times << Phase.get_time_range(timer, self.core_length.minutes)
  	else 
  		target = timer + 24.hours

      sleep = true

      # Add core sleep.
      if self.core_length > 0
        times << Phase.get_time_range(timer, self.core_length.minutes)
        timer += self.core_length.minutes
        sleep = false
      end 

      # Iterate through sleep times.
  	 	while timer < target
  	 		if sleep
  	 			timer += self.nap_length.minutes
  	  		times << Phase.get_time_range(timer, self.nap_length.minutes)
  	  	else
  	  		timer += self.nap_interval.minutes
  	  	end
  	  	sleep = !sleep
  	  end
  	end

  	return times
  end

  def get_daily_sleep
    if self.nap_count != 0
      return (self.daily_length / 60.0).round(1)
    else
      return "7.5 or 9.0"
    end
  end


  def get_core_sleep_length
    if self.nap_count != 0
      return (self.core_length / 60.0).round(1)
    else
      return "7.5 or 9.0"
    end
  end

end