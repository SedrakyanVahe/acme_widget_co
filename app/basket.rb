class Basket
  def initialize(products_list, delivery_cost_calculator, offer)
    @products_list = products_list
    @delivery_cost_calculator = delivery_cost_calculator
    @offer = offer
    @items = []
  end

  def add(product_code)
    product = @products_list.get_product(product_code)
    @items << product if product
  end

  def total
    product_total = @items.sum { |item| item[:price] }
    offer_discount = @offer.apply_offers(@items)
    product_total -= offer_discount
    delivery_cost = @delivery_cost_calculator.calculate(product_total)
    (product_total + delivery_cost).round(2)
  end
end
