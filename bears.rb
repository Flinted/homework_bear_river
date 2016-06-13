class Bear
  attr_reader(:name, :type)
  attr_accessor(:tummy)

  def initialize(bear_name, bear_species)
    @name = bear_name
    @type = bear_species
    @tummy = []
    

  end

  def roar()
    return "Roooar!"
  end

  def bear_take_fish(river)
    fish = river.bear_take_fish
    if fish != nil
      @tummy << fish
    end
  end
end
