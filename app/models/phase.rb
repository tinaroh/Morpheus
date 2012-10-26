class Phase < ActiveRecord::Base
  
  # Helper to get a tuple of formatted time range.
  def self.get_time_range(start_time, sleep_length)
  	return [ start_time.strftime("%I:%M %p"),
  			 (start_time + sleep_length).strftime("%I:%M %p") ]
  end

  # Method to return all of the sleeping times.
  def get_sleep_times(h, m, mr, format=true)
  	times = []

  # Set up timer to count through sleep times.
    timer = Time.new.midnight
    if h != 12 then timer += h.hours end
    timer += m.minutes

    # Adjust meridian.
    if mr == "PM" then timer += 12.hours end

  	if self.nap_count == 0
      times << Phase.get_time_range(timer, self.core_length.minutes)
  	else 
  		target = timer + 1.day

      sleep = true

      # Add core sleep.
      if self.core_length > 0
        times << Phase.get_time_range(timer, self.core_length.minutes)
        timer += self.core_length.minutes
        sleep = false
      end 

      # Iterate through sleep times.
  	 	while timer + self.nap_length.minutes < target
  	 		if sleep
  	  		times << Phase.get_time_range(timer, self.nap_length.minutes)
          if self.core_length.minutes > 0 then timer += self.nap_length.minutes end
  	  	else
          timer += self.nap_interval.minutes
  	  	end
  	  	sleep = !sleep
  	  end
  	end

  	return times
  end

  def get_daily_sleep
    return (self.daily_length / 60.0).round(1)
  end


  def get_core_sleep_length
    return (self.core_length / 60.0).round(1)
  end

end