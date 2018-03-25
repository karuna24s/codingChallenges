$LOAD_PATH.unshift(File.expand_path("../../lib", __FILE__))

require_relative "./test_base"

module Exercise
  class TestExercise < TestBase
    def test_001_welcome
      assert_equal "Welcome!", Exercise.welcome
    end

    def test_002_select_ids_of_skincare_category_products
      products = [
        Fixtures.milky_jelly_cleanser,
        Fixtures.moisturizing_moon_mask,
        Fixtures.invisible_shield,
        Fixtures.haloscope
      ]

      assert_equal [101, 122, 128], Exercise.select_ids_of_skincare_category_products(products)
    end

    def test_003_total_amount_from_orders
      orders = [
        Order.new(base_total: 25, shipping_total: 5, tax_total: 2, user_id: 901),
        Order.new(base_total: 25, shipping_total: 5, tax_total: 2, user_id: 7),
        Order.new(base_total: 95, shipping_total: 20, tax_total: 15, user_id: 335),
        Order.new(base_total: 5, shipping_total: 0, tax_total: 0, user_id: 866),
        Order.new(base_total: 25, shipping_total: 5, tax_total: 2, user_id: 717)
      ]

      assert_equal 231, Exercise.total_amount_from_orders(orders)
    end

    def test_004_state_with_most_orders
      users = [
        User.new(id: 1, name: "Catarina Chayka", location_id: Fixtures.montreal.id),
        User.new(id: 2, name: "Katalin Loris", location_id: Fixtures.los_angeles.id),
        User.new(id: 3, name: "Lilia Klerks", location_id: Fixtures.new_york.id),
        User.new(id: 4, name: "Pat Tachibana", location_id: Fixtures.new_york.id)
      ]

      orders = [
        Order.new(base_total: 1, shipping_total: 1, tax_total: 1, user_id: 1),
        Order.new(base_total: 1, shipping_total: 1, tax_total: 1, user_id: 2),
        Order.new(base_total: 1, shipping_total: 1, tax_total: 1, user_id: 2),
        Order.new(base_total: 1, shipping_total: 1, tax_total: 1, user_id: 2),
        Order.new(base_total: 1, shipping_total: 1, tax_total: 1, user_id: 3),
        Order.new(base_total: 1, shipping_total: 1, tax_total: 1, user_id: 4)
      ]

      assert_equal(
        "California",
        Exercise.state_with_most_orders(
          locations: Fixtures.locations,
          orders: orders,
          users: users
        )
      )
    end

    def test_005_format_offer_with_one_product
      products = [Fixtures.milky_jelly_cleanser]
      assert_equal "Goes well with Milky Jelly Cleanser", Exercise.format_offer(products)
    end

    def test_006_format_offer_with_two_products
      products = [Fixtures.milky_jelly_cleanser, Fixtures.invisible_shield]
      assert_equal(
        "Goes well with Milky Jelly Cleanser and Invisible Shield",
        Exercise.format_offer(products)
      )
    end

    def test_007_format_offer_with_many_products
      products = [
        Fixtures.milky_jelly_cleanser,
        Fixtures.invisible_shield,
        Fixtures.haloscope,
        Fixtures.glossier_you,
      ]

      assert_equal(
        "Goes well with Milky Jelly Cleanser, Invisible Shield, Haloscope, and Glossier You",
        Exercise.format_offer(products)
      )
    end

    def test_008_format_offer_with_no_products
      assert_equal("", Exercise.format_offer([]))
    end
  end
end
