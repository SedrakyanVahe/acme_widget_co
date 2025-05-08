require_relative 'products_list'
require_relative 'basket'
require_relative 'delivery_cost_calculator'
require_relative 'offer'

products_list = ProductsList.new
delivery_rules = { under_50: 4.95, under_90: 2.95, free: 0.0 }
delivery_cost_calculator = DeliveryCostCalculator.new(delivery_rules)
offer = Offer.new({})
basket = Basket.new(products_list, delivery_cost_calculator, offer)

# First test case
basket.add('B01')
basket.add('G01')

puts "TEST 1: Total for basket: $#{basket.total}"

# Second test case
basket2 = Basket.new(products_list, delivery_cost_calculator, offer)
basket2.add('B01')
basket2.add('B01')
basket2.add('R01')
basket2.add('R01')
basket2.add('R01')

puts "TEST 2: Total for basket: $#{basket2.total}"