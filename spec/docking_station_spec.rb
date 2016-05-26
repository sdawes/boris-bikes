require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      # we want to release the bike we docked
      expect(subject.release_bike).to eq bike
    end

    it 'raises an error when there are no bikes available' do
      # Let's not dock a bike first:
      # remember subject == DockingStation.new
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end

    it 'do NOT release broken bikes - raise error if broken' do
      bike = Bike.new
      bike.report_broken
      subject.dock(bike)
      expect { subject.release_bike }.to raise_error 'Bike is broken!'
    end

  end

  describe '#dock' do
    it 'returns docked bikes' do
      bike = Bike.new
      subject.dock(bike)
      # Again, we need to return the bike we just docked
      expect(subject.bike).to eq @bikes
    end

    it 'docks something' do
      bike = Bike.new
      # We want to return the bike we dock
      expect(subject.dock(bike)).to match_array(bike)
    end

    it 'raises an error when full' do
      subject.capacity.times { subject.dock(Bike.new) }
      expect { subject.dock Bike.new }.to raise_error 'Docking station full'
    end

    it 'Has a default capacity' do
      expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
    end


  end

  describe 'initialization' do
    subject { DockingStation.new }
    let(:bike) { Bike.new }
    it 'defaults capacity' do
      described_class::DEFAULT_CAPACITY.times do
        subject.dock(bike)
      end
      expect { subject.dock(bike) }.to raise_error 'Docking station full'
    end

# ======== THE CODE BELOW WAS THE ORIGINAL TEST BEFORE IT WAS REFACTORED ABOVE ========
    # it 'has a variable capacity' do
    #   docking_station = DockingStation.new(50)
    #   50.times {docking_station.dock(Bike.new) }
    #   expect{ docking_station.dock(Bike.new) }.to raise_error 'Docking station full'
    # end
    # ==========================================================================
  end

end
