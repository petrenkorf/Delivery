class City
  attr_reader :pub, :name
  
  def initialize(name, pub)
    @pub  = pub
    @name = name
  end

  def has_delivery?()
    return false if @name == "Balneario Camboriu"
    return true
  end
end
