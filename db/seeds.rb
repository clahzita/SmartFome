# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(email:"popsteak@example",     password: "123456", password_confirmation: "123456")
User.create!(email:"browniemania@example", password: "123456", password_confirmation: "123456")
User.create!(email:"adoromassa@example",   password: "123456", password_confirmation: "123456")
User.create!(email:"miseenplace@example",  password: "123456", password_confirmation: "123456")

PaymentMethod.create!(name: "Dinheiro")
PaymentMethod.create!(name: "Cartão de débito")
PaymentMethod.create!(name: "Cartão de crédito")
  
Profile.create(business_name: "Pop Steak",
               description: "Primeiro Truck de Steaks and Burgers grelhados em chama aberta e fogo forte do Brasil!",
               category: "Food Truck",
               address: "Rua Halley Mestrinho, Ponta Negra - CEP: 59090-160, Natal/RN.",
               phone: "(84) XXXXX-XXXX",
               popularity: 0,
               payment_method_ids: ["1", "2", "3"],
               user_id: "1",
               image_file_name: "bg01.jpg",
               image_content_type: "image/jpeg",
               image_file_size: 28852,
               image_updated_at: "2017-12-04 03:06:16",
               latitude: nil,
               longitude: nil
               )
Profile.create(business_name: "BROWNIE MANIA",
               description: "1º Food Truck de Brownie do Brasil,Trabalhamos com grande variedade de brownies, derivados e Waffles.",
               category: "Food Truck",
               address: "Rua Halley Mestrinho, Ponta Negra - CEP: 59090-160, Natal/RN.",
               phone: "(84) 99999-9999",
               popularity: 0,
               payment_method_ids: ["1", "2", "3"],
               user_id: "2",
               image_file_name: "bg01.jpg",
               image_content_type: "image/jpeg",
               image_file_size: 28852,
               image_updated_at: "2017-12-04 03:06:16",
               latitude: nil,
               longitude: nil
               )
Profile.create(business_name: "Adoro Massa",
               description: "Food truck especializado em massas italiana.",
               category: "Food Truck", address: "Rua Ataulfo Alves, 1911 - Candelária, Natal/RN.",
               phone: "(84) 99999-9999",
               popularity: 0,
               payment_method_ids: ["1", "2", "3"],
               user_id: "3",
               image_file_name: "bg01.jpg",
               image_content_type: "image/jpeg",
               image_file_size: 28852,
               image_updated_at: "2017-12-04 03:06:16",
               latitude: nil,
               longitude: nil
               )
               
Profile.create(business_name: "Mise en Place - Cozinha Gourmet",
               description: "Especialista em tapiocas alegrando o paladar dos nossos clientes",
               category: "Food Truck",
               address: "Av. Antônio Basílio, 2960 - Lagoa Nova, Natal - RN, 59056-500.",
               phone: "(84) XXXXX-XXXX",
               popularity: 0,
               payment_method_ids: ["1", "2", "3"],
               user_id: "4",
               latitude: nil,
               longitude: nil
               )
