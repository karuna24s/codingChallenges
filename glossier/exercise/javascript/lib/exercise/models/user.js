var exports = module.exports = {}

/**
 * id: Number
 *   The unique id of the user.
 * name: String
 *   The user's name.
 * loationId: Number
 *   The unique id associated with the user's location.
 */
exports.User = class User {
  constructor(id, name, locationId) {
    this.id = id
    this.name = name
    this.locationId = locationId
  }
}
