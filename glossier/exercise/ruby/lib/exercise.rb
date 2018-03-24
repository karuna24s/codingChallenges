module Exercise
  SKINCARE = "skincare"
  # Fix the first failing test by uncommenting the body of this method. Run
  # `make test` to confirm that `test_001_welcome` passes, then continue until
  # all tests pass.
  #
  # returns: String
  def self.welcome
    "Welcome!"
  end

  # Returns an array of ids for all products in the 'skincare' category.
  #
  # Results should be returned in ascending order.
  #
  # products: [Product]
  # returns: [Integer]
  def self.select_ids_of_skincare_category_products(products)
    skincare_products = products.select { |product| product.category == SKINCARE}
    skincare_products_id = skincare_products.map { |p| p.id }
    skincare_products_id.sort
  end

  # Each order has a base_total, shipping_total, and tax_total. Adding these
  # together gives the amount a customer was charged for an order.
  #
  # Given an array of orders, calculate the total that was charged for all
  # the orders combined.
  #
  # orders: [Order]
  # returns: Integer
  def self.total_amount_from_orders(orders)
    total_from_orders = []
    orders.map do |order|
      total_from_orders << order.base_total + order.shipping_total + order.tax_total
    end
    # total_amount_from_orders.sum
    total_from_orders.reduce(:+)
  end

  # Each order belongs to a user, and each user has a location. From a list
  # of orders, determine the state of the location with the highest number of
  # orders.
  #
  # locations: [Location]
  # orders: [Order]
  # users: [User]
  # returns: String
  def self.state_with_most_orders(locations:, orders:, users:)
    require 'pry'
    binding.pry
    puts "#{orders}"
    puts "#{orders.class}"
    puts "#{locations}"
    puts "#{locations.class}"
    puts "#{users}"
    puts "#{users.class}"
    
  end

  # Given a list of recommended products, generate a formatted message
  # to present to the user with recommended product names. Example strings:
  #
  # "Goes well with A"
  # "Goes well with A and B"
  # "Goes well with A, B, and C"
  #
  # products: [Product]
  # returns: String
  def self.format_offer(products)
  end
end
