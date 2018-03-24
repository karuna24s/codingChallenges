require "minitest/autorun"
require "minitest/pride"

require_relative "./fixtures"

require "exercise"
require "exercise/models/location"
require "exercise/models/order"
require "exercise/models/product"
require "exercise/models/user"

class TestBase < Minitest::Test
  def self.runnable_methods
    methods = methods_matching(/^test_/).sort.reverse
  end
end
