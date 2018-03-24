var exports = module.exports = {}

/**
 * category: String
 *   The category that the product belongs to, e.g.: skincare, makeup.
 * id: Number
 *   The unique id of the product.
 * name: String
 *   The name of the product.
 */
exports.Product = class Product {
  constructor(category, id, name) {
    this.category = category
    this.id = id
    this.name = name
  }
}
