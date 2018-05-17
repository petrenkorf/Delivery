require 'city'
require 'pub'

RSpec.describe City do
  it "city has pub" do
    pub = Pub.new
    city = City.new pub
    expect(city.pub).to be(pub)
  end
end
