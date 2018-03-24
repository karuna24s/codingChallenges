module Exercise
  module Fixtures
    def self.milky_jelly_cleanser
      Product.new(
        category: "skincare",
        id: 101,
        name: "Milky Jelly Cleanser"
      )
    end

    def self.moisturizing_moon_mask
      Product.new(
        category: "skincare",
        id: 128,
        name: "Moisturizing Moon Mask"
      )
    end

    def self.invisible_shield
      Product.new(
        category: "skincare",
        id: 122,
        name: "Invisible Shield"
      )
    end

    def self.haloscope
      Product.new(
        category: "makeup",
        id: 395,
        name: "Haloscope"
      )
    end

    def self.glossier_you
      Product.new(
        category: "fragrance",
        id: 910,
        name: "Glossier You"
      )
    end

    def self.new_york
      Location.new(
        city: "New York City",
        country: "USA",
        id: 1,
        state: "New York"
      )
    end

    def self.montreal
      Location.new(
        city: "Montreal",
        country: "Canada",
        id: 2,
        state: "Quebec"
      )
    end

    def self.san_francisco
      Location.new(
        city: "San Francisco",
        country: "USA",
        id: 3,
        state: "California"
      )
    end

    def self.los_angeles
      Location.new(
        city: "Los Angeles",
        country: "USA",
        id: 4,
        state: "California"
      )
    end

    def self.locations
      [new_york, montreal, san_francisco, los_angeles]
    end
  end
end
