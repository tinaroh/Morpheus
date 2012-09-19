class HomeController < ApplicationController

  def result 
    # Array of sleep time and length pairs.
    @sleep_times = []

    if params[:type] == "core"
      @status = "core"
    elsif params[:type] == "daily"
      @status = "daily"
    elsif params[:type] == "nap"
      @status = "nap"
    else
      @error = true
    end

    # Trim unused parameters.

  end

end