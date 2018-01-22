# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
roles = Role.create([
  {role: 'Admin'}, {role: 'Customer'}
])
accountStatus = AccountStatus.create([
  {status: 'enable'},{status: 'banned'},{status: 'blocked'}
])
orderStatus = OrderStatus.create([
  {status: 'pending'},{status: 'failed'},{status: 'processing'},
  {status: 'completed'},{status: 'canceled'},{status: 'refunded'},
])
productCategoty = ProductCategoty.create([
  {name: 'Mainboard'},{name: 'Mouse'},{name: 'Keyboard'},
  {name: 'Fan'},{name: 'RAM'},{name: 'VGA'},
  {name: 'Hard Disk'}, {name: 'Software'}
])