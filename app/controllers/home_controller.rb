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
    phase_params = Param.new(params)
    if not phase_params.valid?
      return
    end

    # Time parameters.
    @h = phase_params.h
    @m = phase_params.m
    @mr = phase_params.mr

    # Search database for fit.
    if phase_params.type == "daily"
      min = phase_params.amt.to_i * 60
      @phases = Phase.find(:all, :conditions => ["daily_length between ? and ?", min-30, min+30])
      if @phases.empty?
        # Establish bigger threshold.
        @phases = Phase.find(:all, :conditions => ["daily_length between ? and ?", min-40, min+40])
      end
    elsif phase_params.type == "core"
      min = phase_params.amt.to_i * 60
      @phases = Phase.find(:all, :conditions => ["core_length between ? and ?", min-30, min+30])
      if @phases.empty?
        # Establish bigger threshold.
        @phases = Phase.find(:all, :conditions => ["core_length between ? and ?", min-60, min+30])
      end
    elsif phase_params.type == "nap"
      @phases = Phase.find_all_by_nap_count(phase_params.amt)
    end
  end

end