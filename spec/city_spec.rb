require 'city'
require 'pub'

RSpec.describe City do
  it "city has pub" do
    pub = Pub.new
    city = City.new "Balneario Camboriu", pub
    expect(city.pub).to be(pub)
  end
  
  context "Balneario Camboriu's pub" do
    pub = Pub.new
    city = City.new "Balneario Camboriu", pub

    it "does not delivery orders" do
      expect(city.has_delivery?).to be(false)    
    end
  end

  context "Itajai's pub" do
    pub = Pub.new
    city = City.new "Itajai", pub

    it "delivery orders" do
      expect(city.has_delivery?).to be(true)    
    end
  end

  context "Itapema's pub" do
    pub = Pub.new
    city = City.new "Itapema", pub

    it "delivery orders" do
      expect(city.has_delivery?).to be(true)    
    end
  end
end
