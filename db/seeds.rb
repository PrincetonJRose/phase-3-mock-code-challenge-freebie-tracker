puts "Creating companies..."
Company.create(name: "Google", founding_year: 1998)
Company.create(name: "Facebook", founding_year: 2004)
Company.create(name: "Dunder Mifflin", founding_year: 2002)
Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
Dev.create(name: "Rick")
Dev.create(name: "Morty")
Dev.create(name: "Mr. Meseeks")
Dev.create(name: "Gazorpazop")

puts "Creating freebies..."

# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here

items = ['Button/Pin', 'Pen', 'Lanyards', 'Stickers', 'Keychain', 'Waterbottle', 'Backpack', 'Headwear']

20.times do
    Freebie.find_or_create_by(dev: Dev.all.sample, company: Company.all.sample, item_name: items.sample, value: rand(1..20))
end

puts "Seeding done!"
