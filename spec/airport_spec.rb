require 'airport'

describe Airport do
  it "offers space for a plane to land" do
    airport = Airport.new
    expect(airport).to respond_to(:land)
  end

  it "adds plane to airport" do
    airport = Airport.new
    storage = airport.land(plane)
    expect(storage).to change{:airport_planes.count}.by(+1)
  end

it "removes plane from airport" do
  plane = Airport.new
  storage = plane.take_off(plane)
  expect(storage).to change{:airport_planes.count}.by(-1)
end

it "generates sun or storm" do
  weather = Airport.new
  condition = weather.generate
  expect(condition).to eq("stormy").or eq("sunny")
end
end
