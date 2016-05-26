require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20
  attr_reader :capacity

  def initialize(capacity=DEFAULT_CAPACITY)
    @bikes = []
    @capacity = DEFAULT_CAPACITY
  end

  def dock(bike)
    fail raise 'Docking station full' if full?
    @bikes << bike
  end

  def release_bike
    fail 'No bikes available' if empty?
    @bikes.pop
  end

  def bike
    @bike
  end

# =========== private methods ===========
  private
  def full?
    @bikes.count >= @capacity
  end

  def empty?
    @bikes.empty?
  end


end
