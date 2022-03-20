# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



Genre.create!(id:1,name:"ケーキ")
Genre.create!(id:2,name:"焼き菓子")
Genre.create!(id:3,name:"プリン")
Genre.create!(id:4,name:"キャンディ")

Item.create!(id:1,genre_id:1,name:"いちごのショートケーキ",introduction:"最高級のいちごを用いたショートケーキです。",is_status:1,price:1000,)
Item.create!(id:2,genre_id:1,name:"バナナのショートケーキ",introduction:"最高級のバナナを用いたショートケーキです。",is_status:1,price:800,)
Item.create!(id:3,genre_id:2,name:"いちごのタルト",introduction:"最高級のいちごを用いたタルトです。",is_status:1,price:500,)
Item.create!(id:4,genre_id:2,name:"バナナのタルト",introduction:"最高級のバナナを用いたタルトです。",is_status:1,price:500,)
Item.create!(id:5,genre_id:3,name:"いちごのプリン",introduction:"最高級のいちごを用いたプリンです。",is_status:1,price:300,)
Item.create!(id:6,genre_id:3,name:"バナナのプリン",introduction:"最高級のバナナを用いたプリンです。",is_status:1,price:300,)
Item.create!(id:7,genre_id:4,name:"いちごのキャンディ",introduction:"最高級のいちごを用いたキャンディです。",is_status:1,price:200,)
Item.create!(id:8,genre_id:4,name:"バナナのキャンディ",introduction:"最高級のバナナを用いたキャンディです。",is_status:1,price:200,)



Admin.create!(
    email: 'admin@admin.com',
    password: '123456',
)
