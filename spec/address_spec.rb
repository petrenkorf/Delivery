require 'address'

RSpec.describe Address do
  it "has city name" do
    address = Address.new "Name"
    expect(address.city).to eq("Name")
  end
end
