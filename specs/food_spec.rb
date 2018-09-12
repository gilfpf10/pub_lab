require('minitest/autorun')
require('minitest/rg')
require_relative('../food.rb')
class FoodTest < MiniTest::Test

def setup()
@food1 = Food.new("burger",5.0,1)
end


def test_food_name
  assert_equal("burger", @food1.name)
end






end
