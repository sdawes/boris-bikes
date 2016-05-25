require '~/documents/projects/boris-bikes/lib/docking_station.rb'  # => true
require '~/documents/projects/boris-bikes/lib/bike.rb'             # => false

docking_station = DockingStation.new         # => #<DockingStation:0x007f83bba66b70 @bikes=[]>
18.times { docking_station.dock(Bike.new) }  # => 18
docking_station.dock(Bike.new)               # => [#<Bike:0x007f83bba66918>, #<Bike:0x007f83bba668f0>, #<Bike:0x007f83bba668c8>, #<Bike:0x007f83bba668a0>, #<Bike:0x007f83bba66878>, #<Bike:0x007f83bba66850>, #<Bike:0x007f83bba66828>, #<Bike:0x007f83bba66800>, #<Bike:0x007f83bba667d8>, #<Bike:0x007f83bba667b0>, #<Bike:0x007f83bba66788>, #<Bike:0x007f83bba66760>, #<Bike:0x007f83bba66738>, #<Bike:0x007f83bba66710>, #<Bike:0x007f83bba666e8>, #<Bike:0x007f83bba666c0>, #<Bike:0x007f83bba66698>, #<Bike:0x007f83bba66670>, #<Bike:0x007f83bba664b8>]
