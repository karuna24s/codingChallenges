module Exercise
  class Product
    attr_reader :category, :id, :name

    # category: String
    #   The category that the product belongs to, e.g.: skincare, makeup.
    # id: Integer
    #   The unique id of the product.
    # name: String
    #   The name of the product.
    def initialize(category:, id:, name:)
      @category, @id, @name = category, id, name
    end
  end
end
