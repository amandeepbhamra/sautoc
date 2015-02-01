# create 500 categories
puts "Creating 'categories'"
500.times do
  Category.create(name: Faker::Name.name)
end
 
 
# create 500 vendors
puts "Creating 'vendors'"
500.times do
  Vendor.create(name: Faker::Name.name)
end