require('minitest/autorun')
require('minitest/rg')
require_relative('../pub.rb')
require_relative('../customer.rb')
require_relative('../food.rb')
require_relative('../drink.rb')

class PubTest < MiniTest::Test

  def setup

    @wine = Drink.new("pinot", 5, 1)
    @beer = Drink.new("beer", 2.5, 1 )
    @food1 = Food.new("burger",5.0,1)
    @food2 = Food.new("carrot",1, 0.5)


    @brel = Pub.new("brel", 1000,
      {@beer => 3, @wine => 5},
      {@food1 => 10, @food2 => 100})
      @customer1 = Customer.new("Gil", 20, 100)


    end

    def test_name
      assert_equal("brel",@brel.name)

    end

    def test_check_customer_age__true
      expected = true
      actual = @brel.check_customer_age(@customer1)
      assert_equal(expected, actual)
    end


    def test_check_customer_drunkness__false
      expected =false
      actual = @brel.check_customer_drunkness(@customer1)
      assert_equal(expected, actual)
    end

    def test_stock_value
      expected = 32.5
      actual = @brel.stock_value
      assert_equal(expected, actual)

    end





  end
