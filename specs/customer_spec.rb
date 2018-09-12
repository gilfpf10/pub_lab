require('minitest/autorun')
require('minitest/rg')
require_relative('../drink.rb')
require_relative('../food.rb')
require_relative('../pub.rb')
require_relative('../customer.rb')
class CustomerTest < MiniTest::Test

  def setup
    # arrange
    @wine = Drink.new("pinot", 5, 1)
    @beer = Drink.new("beer", 2.5, 1 )
    @food1 = Food.new("burger",5.0,1)
    @food2 = Food.new("carrot",1, 0.5)

    @brel = Pub.new("brel", 1000,
      {@beer => 3, @wine5 => 5},
      {@food1 => 10, @food2 => 100})
      @customer1 = Customer.new("Gil", 20, 100)


      @beer = Drink.new("beer", 2.5, 1 )
      @customer1 = Customer.new("Gil", 20, 100)
    end

    def test_name
      assert_equal("Gil", @customer1.name)
    end

    def test_buy_drink
      # act
      @customer1.buy_drink(@brel,@beer)

      expected_wallet = 97.5
      actual_wallet = @customer1.wallet
      assert_equal(expected_wallet, actual_wallet)

      expected_till = 1002.5
      actual_till = @brel.till
      assert_equal(expected_till, actual_till)

      expected_drunkness = 1
      actual_drunkness = @customer1.drunkness
      assert_equal(expected_drunkness, actual_drunkness)

    end

    def test_buy_food
      @customer1.buy_drink(@brel,@beer)
      @customer1.buy_food(@brel, @food2)
      expected_wallet = 96.5
      actual_wallet = @customer1.wallet
      assert_equal(expected_wallet, actual_wallet)
      expected_till = 1003.5
      actual_till = @brel.till
      assert_equal(expected_till, actual_till)
      expected_drunkness= 0.5
      actual_drunkness = @customer1.drunkness
      assert_equal(expected_drunkness, actual_drunkness)
    end






  end
