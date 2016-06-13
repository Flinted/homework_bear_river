require 'minitest/autorun'
require_relative '../river'
require_relative '../fish'



class TestRiver < MiniTest::Test

  def setup
    fish_1 = Fish.new("Nemo")
    fish_2 = Fish.new("Goldie")
    fish_3 = Fish.new("Food")
   

    fish_in_river = [ fish_1,fish_2,fish_3]
    @river = River.new(fish_in_river)
  end

  def number_of_fish
    assert_equal(3, @river.number_of_fish)
  end

  def test_bear_take_fish
    @river.bear_take_fish
    assert_equal(2,@river.river_folk.size)
  end
end