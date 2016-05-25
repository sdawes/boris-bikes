require '~/documents/projects/boris-bikes/lib/docking_station.rb'  # => true
require '~/documents/projects/boris-bikes/lib/bike.rb'             # => false

docking_station = DockingStation.new  # => #<DockingStation:0x007f9d93936e98 @bikes=[]>
20.times do                           # => 20
  docking_station.dock(Bike.new)      # => [#<Bike:0x007f9d93936ab0>], [#<Bike:0x007f9d93936ab0>, #<Bike:0x007f9d939368a8>], [#<Bike:0x007f9d93936ab0>, #<Bike:0x007f9d939368a8>, #<Bike:0x007f9d93936678>], [#<Bike:0x007f9d93936ab0>, #<Bike:0x007f9d939368a8>, #<Bike:0x007f9d93936678>, #<Bike:0x007f9d939363f8>], [#<Bike:0x007f9d93936ab0>, #<Bike:0x007f9d939368a8>, #<Bike:0x007f9d93936678>, #<Bike:0x007f9d939363f8>, #<Bike:0x007f9d93936128>], [#<Bike:0x007f9d93936ab0>, #<Bike:0x007f9d939368a8>, #<Bike:0x007f9d93936678>, #<Bike:0x007f9d939363f8>, #<Bike:0x007f9d93936128>, #<Bike:0x007f9d93935e08>], [#<Bike:0x007f9d93936ab0>, #<Bike:0x007f9d939368a8>, #<Bike:0x007f9d93936678>, #<Bike:0x007f9d939363f8>, #<Bike:0x007f9d93936128>, #<Bike:0x007f9d93935e08>, #<Bike:0x007f9d93935a98>], [#<Bike:0x007f9d93936ab0>, #<Bike:0x007f9d939368a8>, #<Bike:0x007f9d93936678>, #<Bike:0x007f9d939363f8>, #<Bike:0x007f9d93936128>, #<Bike:0x007f9d93935e08>, #<Bike:0x007f9d93935a98>, #<Bike:0x007f9d939356d8>], [#...
  end                                   # => 20
docking_station.dock(Bike.new)        # ~> RuntimeError: Docking station full

# ~> RuntimeError
# ~> Docking station full
# ~>
# ~> /Users/sdawes/documents/projects/boris-bikes/lib/docking_station.rb:14:in `dock'
# ~> /Users/sdawes/Documents/projects/boris-bikes/feature_test.rb:8:in `<main>'
