# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'

file = File.read('/Users/gustavomantovan/open-data-set/products.json')
product_hash = JSON.parse(file)

product_hash.each do |i|
  pro = Product.new
  pro.name = i['name']
  pro.sku = i['sku']
  pro.kind = i['type']
  pro.price = i['price']
  pro.category = i['category']
  pro.shipping = i['shipping']
  pro.description = i['description']
  pro.manufacturer = i['manufacturer']
  pro.model = i['model']
  pro.url = i['url']
  pro.image = i['image']
  pro.save
end
