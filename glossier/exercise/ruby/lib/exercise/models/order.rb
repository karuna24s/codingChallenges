module Exercise
  class Order
    attr_reader :base_total, :shipping_total, :tax_total, :user_id

    # base_total: Integer
    #   The cost in dollars for the items in order, excluding shipping and tax.
    # shipping_total: Integer
    #   The cost in dollars for shipping.
    # tax_total: Integer
    #   The cost in dollars for tax.
    # user_id: Integer
    #   The id of the user that created the order.
    def initialize(base_total:, shipping_total:, tax_total:, user_id:)
      @base_total = base_total
      @shipping_total = shipping_total
      @tax_total = tax_total
      @user_id = user_id
    end
  end
end
