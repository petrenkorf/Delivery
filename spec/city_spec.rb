require 'city'

RSpec.describe City do
  it "city has pub" do
    city = City.new "Balneario Camboriu"
    expect(city.name).to eq("Balneario Camboriu")
  end
  
  context "Balneario Camboriu's pub" do
    city = City.new "Balneario Camboriu"

    it "does not delivery orders" do
      expect(city.delivery?).to be(false)    
    end
    
    it "have local withdraw" do
      expect(city.local_withdraw?).to be(true)
    end
  end

  context "Itajai's pub" do
    city = City.new "Itajai"

    it "delivery orders" do
      expect(city.delivery?).to be(true)    
    end

    it "doesn't have local withdraw" do
      expect(city.local_withdraw?).to be(false)
    end
  end

  context "Itapema's pub" do
    city = City.new "Itapema"

    it "delivery orders" do
      expect(city.delivery?).to be(true)    
    end

    it "have local withdraw" do
      expect(city.local_withdraw?).to be(true)
    end
  end
end
