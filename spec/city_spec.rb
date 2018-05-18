require 'city'

RSpec.describe City do
  it "city has name" do
    city = City.new "Balneario Camboriu"
    expect(city.name).to eq("Balneario Camboriu")
  end
  
  it "costs R$ 10,00 to delivery" do
    city = City.new "Itapema"
    expect(city.delivery_price).to eq(10.00)
  end

  it "delivery in same city only" do
      city         = City.new "Balneario Camboriu"
      same_city    = Address.new "Balneario Camboriu"
      another_city = Address.new "Itajai"

      expect(city.delivery_to?(same_city)).to be(true)
      expect(city.delivery_to?(another_city)).to be(false)
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
    
    it "delivery to other cities" do
      different_city = Address.new "Itapema"
      expect(city.delivery_to? different_city).to be(true)
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
