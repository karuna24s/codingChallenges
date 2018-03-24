module Exercise
  class Location
    attr_reader :city, :country, :id, :state

    # city: String
    #   The location's city.
    # country: String
    #   The location's country.
    # id: Integer
    #   The unique id of the location.
    # state: String
    #   The location's state/province.
    def initialize(city:, country:, id:, state:)
      @city, @country, @id, @state = city, country, id, state
    end
  end
end
