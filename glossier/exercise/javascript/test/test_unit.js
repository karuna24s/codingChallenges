const exercise = require('lib/exercise')
const Order = require('lib/exercise/models/order').Order
const User = require('lib/exercise/models/user').User
const fixtures = require('test/fixtures')

test('001 welcome', () => {
  expect(exercise.welcome()).toBe('Welcome!')
})

test('002 select ids of skincare category products', () => {
  const products = [
    fixtures.milkyJellyCleanser,
    fixtures.moisturizingMoonMask,
    fixtures.invisibleShield,
    fixtures.haloscope
  ]

  expect(
    exercise.selectIdsOfSkincareCategoryProducts(products)
  )
  .toEqual([101, 122, 128])
})

test('003 total amount from orders', () => {
  const orders = [
    new Order(25, 5, 2, 901),
    new Order(25, 5, 2, 7),
    new Order(95, 20, 15, 335),
    new Order(5, 0, 0, 866),
    new Order(25, 5, 2, 717),
  ]

  expect(
    exercise.totalAmountFromOrders(orders)
  )
  .toEqual(231)
})

test('004 state with most orders', () => {
  const users = [
    new User(1, 'Catarina Chayka', fixtures.montreal.id),
    new User(2, 'Katalin Loris', fixtures.losAngeles.id),
    new User(3, 'Lilia Klerks', fixtures.newYork.id),
    new User(4, 'Pat Tachibana', fixtures.montreal.id),
  ]

  const orders = [
    new Order(1, 1, 1, 1),
    new Order(1, 1, 1, 2),
    new Order(1, 1, 1, 2),
    new Order(1, 1, 1, 2),
    new Order(1, 1, 1, 3),
    new Order(1, 1, 1, 4)
  ]

  expect(
    exercise.stateWithMostOrders(fixtures.locations, orders, users)
  )
  .toEqual('California')
})

test('005 format offer with one product', () => {
  const products = [fixtures.milkyJellyCleanser]
  expect(exercise.formatOffer(products)).toEqual('Goes well with Milky Jelly Cleanser')
})

test('006 format offer with two products', () => {
  const products = [fixtures.milkyJellyCleanser, fixtures.invisibleShield]
  expect(
    exercise.formatOffer(products)
  )
  .toEqual('Goes well with Milky Jelly Cleanser and Invisible Shield')
})

test('007 format offer with many products', () => {
  const products = [
    fixtures.milkyJellyCleanser,
    fixtures.invisibleShield,
    fixtures.haloscope,
    fixtures.glossierYou
  ]


  expect(
    exercise.formatOffer(products)
  )
  .toEqual('Goes well with Milky Jelly Cleanser, Invisible Shield, Haloscope, and Glossier You')
})

test('008 format offer with no products', () => {
  expect(
    exercise.formatOffer([])
  )
  .toEqual('')
})
