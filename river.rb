class River
  
  attr_accessor(:river_folk)

  def initialize(fish_in_river)
    @river_folk = fish_in_river
  end

  def number_of_fish()
    return @river_folk.size
  end

  def bear_take_fish()
    return @river_folk.pop
  end
end
