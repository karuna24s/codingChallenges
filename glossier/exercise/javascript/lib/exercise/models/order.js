var exports = module.exports = {}

/**
 * baseTotal: Number
 *   The cost in dollars for the items in order, excluding shipping and tax.
 * shippingTotal: Number
 *   The cost in dollars for shipping.
 * taxTotal: Number
 *   The cost in dollars for tax.
 * userId: Number
 *   The id of the user that created the order.
 */
exports.Order = class Order {
  constructor(baseTotal, shippingTotal, taxTotal, userId) {
    this.baseTotal = baseTotal
    this.shippingTotal = shippingTotal
    this.taxTotal = taxTotal
    this.userId = userId
  }
}
