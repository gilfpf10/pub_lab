require('minitest/autorun')
require('minitest/rg')
require_relative('../drink.rb')
class DrinkTest < MiniTest::Test

def setup

@beer = Drink.new("beer", 2.5, 1 )
end

def test_drink_name
assert_equal("beer",@beer.name)

end













end
