class Bike

  attr_accessor :broken, :bike_working

  def initialize
    @bike_working = true
  end

  def working?
    @bike_working
  end

  def report_broken
    @bike_working = false
  end

  def broken?
    !@bike_working
  end
end
