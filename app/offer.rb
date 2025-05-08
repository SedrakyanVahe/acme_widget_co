class Offer
  def initialize(offers)
    @offers = offers
  end

  def apply_offers(items)
    red_widgets = items.select { |item| item[:widget_type] == 'red' }
    return 0 if red_widgets.empty?

    half_price = red_widgets.first[:price] / 2.0
    number_of_discounts = red_widgets.count / 2
    number_of_discounts * half_price
  end
end
