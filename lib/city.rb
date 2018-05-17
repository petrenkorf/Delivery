class City
  attr_reader :name
  
  def initialize(name)
    @name = name
  end

  def delivery?()
    return false if @name == "Balneario Camboriu"
    return true
  end

  def local_withdraw?()
    return false if @name == "Itajai"
    return true
  end
end
