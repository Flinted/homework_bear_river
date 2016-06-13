require 'minitest/autorun'
require_relative '../fish'

class TestFish < MiniTest::Test

  def setup
    @fish_1 = Fish.new("Nemo")
    @fish_2 = Fish.new("Goldie")
    @fish_3 = Fish.new("Food")
    @fish_4 = Fish.new("Jaws")
  end

  def test_fish_creation
    assert_equal("Nemo", @fish_1.name)
  end

end