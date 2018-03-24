var exports = module.exports = {}

const Location = require('lib/exercise/models/location').Location
const Product = require('lib/exercise/models/product').Product

exports.milkyJellyCleanser = new Product('skincare', 101, 'Milky Jelly Cleanser')
exports.moisturizingMoonMask = new Product('skincare', 128, 'Milky Jelly Cleanser')
exports.invisibleShield = new Product('skincare', 122, 'Invisible Shield')
exports.haloscope = new Product('makeup', 395, 'Haloscope')
exports.glossierYou = new Product('fragrance', 910, 'Glossier You')

exports.newYork = new Location('New York City', 'USA', 1, 'New York')
exports.montreal = new Location('Montreal', 'Canada', 2, 'Quebec')
exports.sanFrancisco = new Location('San Francisco', 'USA', 3, 'California')
exports.losAngeles = new Location('Los Angeles', 'USA', 4, 'California')

exports.locations = [
  exports.newYork,
  exports.montreal,
  exports.sanFrancisco,
  exports.losAngeles
]
