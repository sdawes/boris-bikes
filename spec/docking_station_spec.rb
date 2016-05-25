require 'docking_station'

describe DockingStation do

  it 'responds to release_bike' do
    expect(subject).to respond_to(:release_bike)
  end

  it 'releases working bikes' do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it 'responds to dock with argument' do
    expect(subject).to respond_to(:dock).with(1).argument
  end
  # it { is_expected.to respond_to(:dock).with(1).argument }

  it 'responds to the method :bike' do
    expect(subject).to respond_to(:bike)
  end
  # it {is_expected.to respond_to(:bike) }

  # our test for #bike
  it 'returns docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    # Again, we need to return the bike we just docked
    expect(subject.bike).to eq bike
  end

end
