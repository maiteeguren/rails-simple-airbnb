puts "Cleaning database"

Flat.destroy_all


puts "Creating flats..."

4.times do
    flat = Flat.new(
        name: Faker::Address.street_name,
        address: Faker::Address.city,
        price_per_night: rand(5..40) * 15,
        number_of_guests: rand(1..8),
        description: Faker::Lorem.sentence

    )
    flat.save!
end

puts "Created #{Flat.count} flat(s)"
