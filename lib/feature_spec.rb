require '~/documents/projects/boris-bikes/lib/docking_station.rb'
require '~/documents/projects/boris-bikes/lib/bike.rb'

station = DockingStation.new(5)
bike = Bike.new

station.dock(bike)
bike2 = Bike.new

station.dock(bike2)

bike3 = Bike.new
bike3.report_broken
bike3

station.dock(bike3)
station.release_bike
