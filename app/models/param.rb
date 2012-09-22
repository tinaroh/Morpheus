class Param
  include ActiveModel::Validations
  
  attr_accessor :amt, :h, :m, :mr, :type
  
  # Make sure all parameters are there.
  validates_presence_of :amt, :h, :m, :mr, :type

  # Type must be one of the three listed. Meridian is AM/PM.
  validates :type, :inclusion => { :in => %w(core daily nap)}
  validates :mr, :inclusion => { :in => %w(AM PM)}
  
  # Numericality.
  validates_numericality_of :h, :m, :amt
  validates :h, :amt, :numericality => { :only_integer => true }

  # All parameters range check.
  validate :within_range

  def initialize(attributes = {})
    @amt = attributes[:amt]
    @h = attributes[:h]
    @m = attributes[:m]
    @mr = attributes[:mr]
    @type = attributes[:type]
  end

  def within_range
    # Check range of hours and minutes.
    if not ("1".."12").include?(@h)
      errors.add(:h, "is not a valid hour.")
    end 
    if not ("00".."59").include?(@m)
      errors.add(:m, "is not a valid minute time.")
    end 

    if amount_out_of_range()
      errors.add(:amt, "is out of range")
    end
  end

  def amount_out_of_range
    amt =  @amt
    type = @type

    if type == "daily" and not ("2".."8").include?(amt)
      return true
    end 

    if type == "core" and not ("0".."8").include?(amt)
      return true
    end 

    if type == "nap" and not ("0".."6").include?(amt)
      return true
    end
  end
end
