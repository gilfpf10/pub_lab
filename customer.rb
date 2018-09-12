class Customer


  attr_reader :name, :age, :drunkness, :wallet

  def initialize(name, age, wallet)
    @name = name
    @age = age
    @wallet = wallet
    @drunkness = 0
  end

  def buy_drink(pub,drink)
    #check stock
    if @wallet >= drink.price
      if pub.check_customer_age(self)
        if  !pub.check_customer_drunkness(self)
          @wallet -= drink.price
          pub.till += drink.price
          @drunkness += drink.alcohol_level
        end
      end
    end

    def buy_food(pub, food)
      if @wallet >= food.price
        @wallet -= food.price
        pub.till += food.price
        @drunkness -= food.rejuvenation_level
      end
    end

  end
end
