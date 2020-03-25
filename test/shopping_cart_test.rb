require 'minitest/autorun'
require 'minitest/pride'
require './lib/product'
require './lib/shopping_cart.rb'

class ShoppingCartTest < Minitest::Test
  def test_it_exists
    cart = ShoppingCart.new("King Soopers", "30items")
    assert_instance_of ShoppingCart, cart
  end

  def test_it_has_a_name
    cart = ShoppingCart.new("King Soopers", "30items")
    assert_equal "King Soopers", cart.name
  end

  def test_it_has_a_capacity
    cart = ShoppingCart.new("King Soopers", "30items")
    assert_equal 30, cart.capacity
  end

  def test_products_initializes_as_empty_array
    cart = ShoppingCart.new("King Soopers", "30items")
    assert_equal [], cart.products
  end

  def test_it_can_add_products
    cart = ShoppingCart.new("King Soopers", "30items")
    product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
    product2 = Product.new(:meat, 'chicken', 4.50, '2')

    cart.add_product(product1)
    assert_equal [product1], cart.products

    cart.add_product(product2)
    assert_equal [product1, product2], cart.products
  end
end
