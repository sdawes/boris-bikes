require '~/documents/projects/boris-bikes/lib/docking_station.rb'  # => true
require '~/documents/projects/boris-bikes/lib/bike.rb'             # => false

docking_station = DockingStation.new         # => #<DockingStation:0x007fae5c24f678>
20.times { docking_station.dock(Bike.new) }  # => 20
docking_station.dock(Bike.new)               # => #<Bike:0x007fae5c24efe8>
