require '~/documents/projects/boris-bikes/lib/docking_station.rb'  # => true
require '~/documents/projects/boris-bikes/lib/bike.rb'             # => false

docking_station = DockingStation.new(40)  # => #<DockingStation:0x007fb87a906548 @bikes=[], @capacity=40>
docking_station.capacity                  # => 40

40.times { docking_station.dock Bike.new }  # => 40
bike = Bike.new                             # => #<Bike:0x007fb87a905968>
docking_station                             # => #<DockingStation:0x007fb87a906548 @bikes=[#<Bike:0x007fb87a906138>, #<Bike:0x007fb87a906110>, #<Bike:0x007fb87a9060e8>, #<Bike:0x007fb87a9060c0>, #<Bike:0x007fb87a906098>, #<Bike:0x007fb87a906070>, #<Bike:0x007fb87a906048>, #<Bike:0x007fb87a906020>, #<Bike:0x007fb87a905ff8>, #<Bike:0x007fb87a905fd0>, #<Bike:0x007fb87a905fa8>, #<Bike:0x007fb87a905f80>, #<Bike:0x007fb87a905f58>, #<Bike:0x007fb87a905f30>, #<Bike:0x007fb87a905f08>, #<Bike:0x007fb87a905ee0>, #<Bike:0x007fb87a905eb8>, #<Bike:0x007fb87a905e90>, #<Bike:0x007fb87a905e68>, #<Bike:0x007fb87a905e40>, #<Bike:0x007fb87a905e18>, #<Bike:0x007fb87a905df0>, #<Bike:0x007fb87a905dc8>, #<Bike:0x007fb87a905da0>, #<Bike:0x007fb87a905d78>, #<Bike:0x007fb87a905d50>, #<Bike:0x007fb87a905d28>, #<Bike:0x007fb87a905d00>, #<Bike:0x007fb87a905cd8>, #<Bike:0x007fb87a905cb0>, #<Bike:0x007fb87a905c88>, #<Bike:0x007fb87a905c60>, #<Bike:0x007fb87a905c38>, #<Bike:0x007fb87a905c10>, #<Bike:0x007fb87a905be...
