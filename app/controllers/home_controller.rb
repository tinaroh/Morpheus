class HomeController < ApplicationController

  def calculate
    # Trim unused parameters.
    new_params = {
      :action => :result,
      :amt => params["#{params[:type]}_amt"],
      :hr => params[:hr],
      :m => params[:m],
      :mr => params[:mr],
      :type => params[:type]
    }

    redirect_to new_params
  end

  def result 
    phase_params = Param.new(params)
    if not phase_params.valid?
      @error = true
      return
    end

    # Array of sleep time and length pairs.
    @sleep_times = []

  end

end