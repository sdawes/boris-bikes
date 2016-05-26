require '~/documents/projects/boris-bikes/lib/docking_station.rb'  # => true
require '~/documents/projects/boris-bikes/lib/bike.rb'             # => false

docking_station = DockingStation.new(20)                                   # => #<DockingStation:0x007fd7541ee488 @bikes=[], @capacity=20>
DockingStation::DEFAULT_CAPACITY.times { docking_station.dock(Bike.new) }  # => 20
docking_station.capacity                                                   # => 20

docking_station.dock(Bike.new)  # ~> RuntimeError: Docking station full
docking_station.release_bike

# ~> RuntimeError
# ~> Docking station full
# ~>
# ~> /Users/sdawes/documents/projects/boris-bikes/lib/docking_station.rb:18:in `dock'
# ~> /Users/sdawes/Documents/projects/boris-bikes/feature_test.rb:8:in `<main>'
