require 'minitest/autorun'
require_relative '../bears'
require_relative '../fish'
require_relative '../river'


class TestBears < MiniTest::Test

  def setup
    @bear_1 = Bear.new("Yogi", "Grizzly")
    @bear_2 = Bear.new("Balloo", "Black")

    fish_1 = Fish.new("nemo")
    fish_2 = Fish.new("Jaws")
    fish_3 = Fish.new("Malcolm")

    @river = [fish_1,fish_2,fish_3]
    
  end

  def test_bear_creation
    assert_equal("Grizzly", @bear_1.type)
    assert_equal("Balloo", @bear_2.name)
  end

  def test_bear_roar
    assert_equal("Roooar!", @bear_1.roar)
  end

  def test_bear_tummy_empty
    assert_equal(0, @bear_1.tummy.size)
  end

  def test_bear_take_fish
    river = River.new(@river)
    @bear_1.bear_take_fish(river)
    assert_equal(1, @bear_1.tummy.size)
    assert_equal(2, river.number_of_fish)
  end
end