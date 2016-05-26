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

    it 'returns the bike if the bike has been docked' do
      bike = Bike.new
      subject.dock(bike)
      # Again, we need to return the bike we just docked
      expect(subject.bike).to eq @bikes
    end

    it 'raises an error when full' do
        subject.capacity.times { subject.dock(Bike.new) }
        expect { subject.dock(Bike.new) }.to raise_error 'Docking station full'
    end

    it 'has a default capacity when no argument is given' do
      expect(subject.capacity).to eq(DockingStation::DEFAULT_CAPACITY)
    end

  end

end
