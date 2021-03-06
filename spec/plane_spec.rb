require 'plane'

describe Plane do

  let(:plane) { described_class.new }

  describe '#initialize' do
    it 'sets a plane to be in flight by default' do
      expect(plane.in_flight).to eq true
    end
  end

  describe '#ground_plane' do
    it 'user can check if a plane is in flight' do
      expect(plane.ground_plane.in_flight).to eq false
    end

    it 'returns self after switching in flight to false' do
      expect(plane.ground_plane).to eq plane
    end

    it 'user can check if a plane is not in flight' do
      plane.ground_plane
      expect(plane.unground_plane.in_flight).to eq true
    end

    it 'returns self after switching in flight to true' do
      plane.ground_plane
      expect(plane.unground_plane).to eq plane
    end
  end

end
