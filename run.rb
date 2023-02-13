require 'pry'

# Enumerables, traversal, searching and sorting
suvs = [
    {
        name: "Landcruiser V8",
        price: 20000000,
        brand: "Toyota",
        origin: "Japan",
        engine: "3.3L V6"
    },
    {
        name: "LX-570",
        price: 25000000,
        brand: "Lexus",
        origin: "Japan",
        engine: "3.4L V6"
    },
    {
        name: "Q7",
        price: 15000000,
        brand: "Audi",
        origin: "Germany",
        engine: "3.0L V6"
    },
    {
        name: "Bentayga",
        price: 35000000,
        brand: "Bentley",
        origin: "UK",
        engine: "4.0L V8"
    },
    {
        name: "Suburban",
        price: 35000000,
        brand: "Chevrolet",
        origin: "USA",
        engine: "3.3L"
    },
    {
        name: "Escalade",
        price: 45000000,
        brand: "Cadillac",
        origin: "USA",
        engine: "6.2L V8"
    },
    {
        name: "Range Rover Vogue",
        price: 25000000,
        brand: "Land-Rover",
        origin: "UK",
        engine: "4.4L V8"
    },
    {
        name: "X7",
        price: 25000000,
        brand: "BMW",
        origin: "Germany",
        engine: "4.4L V8"
    },
    {
        name: "Urus",
        price: 45000000,
        brand: "Lamboghini",
        origin: "Italy",
        engine: "4.0L V8"
    },
    {
        name: "G-Wagon",
        price: 40000000,
        brand: "Mercedes",
        origin: "Germany",
        engine: "4.0L V8"
    },
]

# each
# for every element in the array, each will go over each one
# loops through arrays

def print_suvs
    suvs.each do |s|
        binding.pry
        puts s
    end
end

#collect / map
#loops through an array and returns a new array based on condition
name = suvs.collect do |s|
    s[:name]
end

# select / filter
# filters out elements based on condition
cheaper = suvs.select do |s|
    s[:price] < 25000000
end

expensive = suvs.select do |s|
    s[:price] > 40000000
end

# find
# finds first element based on condition
brand = suvs.find do |s|
    s[:brand] == "Bentley"
end

#sum - reduce in JS
# sums up the total
total = suvs.sum do |s|
    s[:price]
end

# max
# finds the highest value

binding.pry