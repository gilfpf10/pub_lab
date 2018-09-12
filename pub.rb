class Pub

  attr_reader :name
  attr_accessor :till

  def initialize(name, till, stock_of_drinks, stock_of_foods)
    @name = name
    @till = till
    @stock_of_drinks = stock_of_drinks
    @stock_of_foods = stock_of_foods
  end


  def check_customer_age(customer)
    return customer.age > 18
  end

def check_customer_drunkness(customer)
  return customer.drunkness > 10
end


def stock_value

  total_value = 0
  @stock_of_drinks.each do | drink,stock |
    total_value += drink.price * stock

  end
return total_value
end



end
