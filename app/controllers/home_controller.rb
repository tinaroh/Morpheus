class HomeController < ApplicationController

  def calculate
    # Trim unused parameters.
    new_params = {
      :action => :result,
      :amt => params["#{params[:type]}_amt"],
      :h => params[:h],
      :m => params[:m],
      :mr => params[:mr],
      :type => params[:type]
    }

    redirect_to new_params
  end

  def result 
    # Check that all parameters are valid before calculating.
    #phase_params = Param.new(params)
    #if not phase_params.valid?
    #  return
    #end

    @phases = []

    # Search database for fit.


    # Populate statistics


    # Convert h/m/mr to a valid date time.


    # Array of sleep times and length pairs.
    @sleep_times = [["hehe", 10]]

  end

end