# coding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

 Customer.create(id:1, :family_name => '山田', :first_name => '花子', :family_name_kana => 'ヤマダ', :first_name_kana => 'ハナコ', :post_code => '150041', :address => '東京都渋谷区神南町1丁目19-11　パークウェースクエア24階', :telephone_number => '0368694700', :email => 'hoge@exmple.com')

Admin.create!(
    email: 'admin@admin.com',
    password: '123456',
)

