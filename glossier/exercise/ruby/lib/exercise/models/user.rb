module Exercise
  class User
    attr_reader :id, :name, :location_id

    # id: Integer
    #   The unique id of the user.
    # name: String
    #   The user's name.
    # loation_id: Integer
    #   The unique id associated with the user's location.
    def initialize(id:, name:, location_id:)
      @id, @name, @location_id = id, name, location_id
    end
  end
end
