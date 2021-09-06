# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Company.delete_all
Client.delete_all


10.times do
    company=Company.create(
        name:Faker::Company.name,
        address:Faker::Address.street_address,
        city:Faker::Address.city,
        postal_code:Faker::Address.postcode,
        email:Faker::Internet.safe_email
    )
    if company.valid?
        company.clients=rand(0..5).times.map do
            Client.new(
                name:Faker::Company.name,
                address:Faker::Address.street_address,
                city:Faker::Address.city,
                postal_code:Faker::Address.postcode,
                email:Faker::Internet.safe_email,
                ip_address:Faker::Internet.ip_v4_address,
                ftp_user_name:Faker::Internet.username,
                ftp_password:'supersecret',
                ftp_inbound_path:'../Inbound/PO/NewAllPO.txt',
                ftp_outbount_path:'../Outbound/PO/AllPO.txt',
                load_time:10
            )
        end
    end
end

