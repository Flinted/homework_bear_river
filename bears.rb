class Bear
  attr_reader(:name, :type)

  def initialize(bear_name, bear_species)
    @name = bear_name
    @type = bear_species
    @tummy = [] 
  end

  def bear_tummy
    @tummy.size
  end

  def roar()
    return "Roooar!"
  end

  def bear_take_fish(river)
    fish = river.bear_take_fish
      @tummy << fish if fish != nil
  end
end


 