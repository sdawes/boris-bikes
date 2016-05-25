require '~/documents/projects/boris-bikes/lib/docking_station.rb'  # => true
require '~/documents/projects/boris-bikes/lib/bike.rb'             # => false

docking_station = DockingStation.new  # => #<DockingStation:0x007fdcb311f520 @bikes=[]>
docking_station.dock(Bike.new)        # => [#<Bike:0x007fdcb311f2c8>]
docking_station.dock(Bike.new)        # => [#<Bike:0x007fdcb311f2c8>, #<Bike:0x007fdcb311f0c0>]
