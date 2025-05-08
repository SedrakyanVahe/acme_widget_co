class ProductsList
  def initialize
    @products_list = [
      { widget_type: 'red', code: 'R01', price: 32.95 },
      { widget_type: 'green', code: 'G01', price: 24.95 },
      { widget_type: 'blue', code: 'B01', price: 7.95 }
    ]
  end

  def get_product(code)
    product = @products_list.find { |product| product[:code] == code }
    raise "Product with code #{code} not found!" if product.nil?
    product
  end
end
