# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#require 'bcrypt'
#User.create!(username: "tangliang", password_digest: BCrypt::Password.create("123456"), fullname: "tangliang")


(1..5).each do |number|
    Post.create!(title: "Khởi tạo #{number}", slug: "khoi-tao-#{number}",content:"Hello from the other side, what do u want from me, what do u want from me,i just want to say, you bidding my favourite things.",thumbnail:"4.jpg",iduser:"1",view:"1000")
end

