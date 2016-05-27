require 'docking_station'

describe DockingStation do

  let(:bike) {double :bike}

  describe 'initialization' do

    subject { DockingStation.new }
    it 'defaults capacity' do
      described_class::DEFAULT_CAPACITY.times do
        subject.dock(bike)
      end
      expect { subject.dock(bike) }.to raise_error 'Docking station full'
    end

  end

  describe '#release_bike' do

    it "should respond to release bike" do
      expect(subject).to respond_to(:release_bike)
    end

    it 'releases working bikes' do
      subject.dock(double(:bike broken?: false))
      expect(subject.release_bike).to eq bike
    end

    it 'raises an error when there are no bikes available' do
      # Let's not dock a bike first:
      # remember subject == DockingStation.new
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end

    it 'do NOT release broken bikes - raise error if broken' do
      bike = double(:bike, broken?: true)
      bike.report_broken
      subject.dock(bike)
      expect { subject.release_bike }.to raise_error 'Bike is broken!'
    end

    it { is_expected.to respond_to(:dock).with(1).argument }

  end

  describe '#dock' do
    it 'returns docked bikes' do
      bike = double :bike
      subject.dock double(:bike)
      # subject.dock(Bike.new)
      # Again, we need to return the bike we just docked
      expect(subject.bike).to eq @bikes
    end

    it 'docks something' do
      bike = double :bike
      # We want to return the bike we dock
      expect(subject.dock(bike)).to match_array(bike)
    end

    it 'raises an error when full' do
      subject.capacity.times { subject.dock(double :bike) }
      expect { subject.dock(double :bike) }.to raise_error 'Docking station full'
    end

    it 'Has a default capacity' do
      expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
    end


  end

end
