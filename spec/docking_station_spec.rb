require 'docking_station'

describe DockingStation do

  describe '#release_bike' do

    it 'responds to a release bike method' do
      expect(subject).to respond_to :release_bike
    end

    it 'releases a bike from the station' do
      bike = Bike.new
      subject.dock(bike)
      # we want to release the bike we docked
      expect(subject.release_bike).to eq bike
    end

    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error('No bikes available')
    end

  end

  describe '#dock' do

    it 'docks something' do
      bike = Bike.new
      # We want to return the bike we dock
      expect(subject.dock(bike)).to match_array(bike)
    end

    it 'returns docked bikes' do
      bike = Bike.new
      subject.dock(bike)
      # Again, we need to return the bike we just docked
      expect(subject.bike).to eq @bikes
    end

    it 'raises an error when full' do
      DockingStation::DEFAULT_CAPACITY.times do
        subject.dock(Bike.new)
      end
      expect { subject.dock Bike.new }.to raise_error 'Docking station full'
    end

  end

end
