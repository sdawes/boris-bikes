require '~/documents/projects/boris-bikes/lib/docking_station.rb'
require '~/documents/projects/boris-bikes/lib/bike.rb'

docking_station = DockingStation.new
bike = Bike.new

docking_station.dock(bike).working?

15.times { docking_station.dock Bike.new }

docking_station
