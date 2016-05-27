require '~/documents/projects/boris-bikes/lib/docking_station.rb'  # => true
require '~/documents/projects/boris-bikes/lib/bike.rb'             # => false

station = DockingStation.new(5)  # => #<DockingStation:0x007f84899b5130 @bikes=[], @capacity=5>
bike = Bike.new                  # => #<Bike:0x007f84899b4eb0 @bike_working=true>

station.dock(bike)  # => [#<Bike:0x007f84899b4eb0 @bike_working=true>]
bike2 = Bike.new    # => #<Bike:0x007f84899b4aa0 @bike_working=true>

station.dock(bike2)  # => [#<Bike:0x007f84899b4eb0 @bike_working=true>, #<Bike:0x007f84899b4aa0 @bike_working=true>]

bike3 = Bike.new     # => #<Bike:0x007f84899b4618 @bike_working=true>
bike3.report_broken  # => false
bike3                # => #<Bike:0x007f84899b4618 @bike_working=false>



station.dock("Stephen Dawes")  # => [#<Bike:0x007f84899b4eb0 @bike_working=true>, #<Bike:0x007f84899b4aa0 @bike_working=true>, "Stephen Dawes"]
