class ShoppingCart
  attr_reader :name, :capacity, :products, :total_number_of_products
  def initialize(name, capacity, products = [])
    @name = name
    @capacity = capacity.to_i
    @products = products
    @total_number_of_products = 0
  end

  def add_product(product)
    @products << product
    @total_number_of_products += product.quantity
  end
end
