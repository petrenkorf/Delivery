class City
  attr_reader :name, :delivery_price

  def initialize(name, delivery_price = 10.00)
    @name = name
    @delivery_price = delivery_price
  end

  def delivery?()
    return false if @name == "Balneario Camboriu"
    return true
  end

  def local_withdraw?()
    return false if @name == "Itajai"
    return true
  end

  def delivery_to?(address)
    return true if @name == address.city or @name == "Itajai"
    return false
  end
end
