var exports = module.exports = {}

/**
 * city: String
 *   The location's city.
 * country: String
 *   The location's country.
 * id: Number
 *   The unique id of the location.
 * state: String
 *   The location's state/province.
 */
exports.Location = class Location {
  constructor(city, country, id, state) {
    this.city = city
    this.country = country
    this.id = id
    this.state = state
  }
}
