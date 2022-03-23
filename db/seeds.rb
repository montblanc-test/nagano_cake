# coding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Genre.create!(name:"ケーキ")
Genre.create!(name:"焼き菓子")
Genre.create!(name:"プリン")
Genre.create!(name:"キャンディ")

# item = Item.create!(genre_id:1,name:"いちごのショートケーキ",introduction:"最高級のいちごを用いたショートケーキです。",is_status:1,price:1000)
# item.item_image.attach(io: File.open(Rails.root.join('app/assets/images/cake1.jpeg')),filename: 'cake1.jpeg')
# item = Item.create!(genre_id:1,name:"バナナケーキ",introduction:"最高級のバナナを用いたショートケーキです。",is_status:1,price:800 )
# item.item_image.attach(io: File.open(Rails.root.join('app/assets/images/cake1.jpeg')),filename: 'cake1.jpeg')
# item = Item.create!(genre_id:2,name:"いちごのタルト",introduction:"最高級のいちごを用いたタルトです。",is_status:1,price:500 )
# item.item_image.attach(io: File.open(Rails.root.join('app/assets/images/taruto.jpeg')),filename: 'taruto.jpeg')
# item = Item.create!(genre_id:2,name:"バナナのタルト",introduction:"最高級のバナナを用いたタルトです。",is_status:1,price:500 )
# item.item_image.attach(io: File.open(Rails.root.join('app/assets/images/taruto1.jpeg')),filename: 'taruto1.jpeg')
# item = Item.create!(genre_id:3,name:"いちごのプリン",introduction:"最高級のいちごを用いたプリンです。",is_status:1,price:300 )
# item.item_image.attach(io: File.open(Rails.root.join('app/assets/images/purin.jpeg')),filename: 'purin.jpeg')
# item = Item.create!(genre_id:3,name:"バナナのプリン",introduction:"最高級のバナナを用いたプリンです。",is_status:1,price:300 )
# item.item_image.attach(io: File.open(Rails.root.join('app/assets/images/purin1.jpeg')),filename: 'purin1.jpeg')
# item = Item.create!(genre_id:4,name:"いちごのキャンディ",introduction:"最高級のいちごを用いたキャンディです。",is_status:1,price:200 )
# item.item_image.attach(io: File.open(Rails.root.join('app/assets/images/candy1.jpeg')),filename: 'candy1.jpeg')
# item = Item.create!(genre_id:4,name:"バナナのキャンディ",introduction:"最高級のバナナを用いたキャンディです。",is_status:1,price:200 )

  Item.create!(genre_id:1,name:"いちごのショートケーキ",introduction:"最高級のいちごを用いたショートケーキです。",is_status:1,price:1000)
  Item.create!(genre_id:1,name:"バナナケーキ",introduction:"最高級のバナナを用いたショートケーキです。",is_status:1,price:800 )
  Item.create!(genre_id:2,name:"いちごのタルト",introduction:"最高級のいちごを用いたタルトです。",is_status:1,price:500 )
  Item.create!(genre_id:2,name:"バナナのタルト",introduction:"最高級のバナナを用いたタルトです。",is_status:1,price:500 )
  Item.create!(genre_id:3,name:"いちごのプリン",introduction:"最高級のバナナを用いたタルトです。",is_status:1,price:300 )
  Item.create!(genre_id:3,name:"バナナのプリン",introduction:"最高級のバナナを用いたプリンです。",is_status:1,price:300 )
  Item.create!(genre_id:4,name:"いちごのキャンディ",introduction:"最高級のいちごを用いたキャンディです。",is_status:1,price:200 )
  Item.create!(genre_id:4,name:"バナナのキャンディ",introduction:"最高級のバナナを用いたキャンディです。",is_status:1,price:200 )



Admin.create!(
    email: 'admin@admin.com',
    password: '123456',
))