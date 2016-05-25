require '~/documents/projects/boris-bikes/lib/docking_station.rb'
require '~/documents/projects/boris-bikes/lib/bike.rb'

docking_station = DockingStation.new
20.times { docking_station.dock(Bike.new) }

docking_station.dock(Bike.new)
docking_station.release_bike
