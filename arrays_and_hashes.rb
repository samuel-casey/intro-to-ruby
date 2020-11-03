my_array = ['a', 'b', 'c']

# puts my_array
# puts my_array[1]

my_arr = %w[a b c]

# puts my_arr
# puts my_arr.first
# puts my_arr[-3,2]

my_arr[my_arr.length] = "d"


# shovel

my_arr << "e"

#.push

my_arr << "f"

my_arr.unshift(0)
# puts my_arr

my_hash = {}

my_hash["A"] = 1

my_hash_2 = {
    "odds" => [1,3],
    "evens" => [2,4]
}

# puts my_hash, my_hash_2

apartment = {}
# => {}

apartment[:address]
# => ""

apartment[:address] = { street: '255 Long Road', city: 'Awesomeville' }
# => {:street=>"255 Long Road", :city=>"Awesomeville"}

apartment[:bedrooms] = 3
# => 3

priced_apartment = apartment.merge(rent: 1000)
# => {:address=>{:street=>"255 Long Road", :city=>"Awesomeville"}, :bedrooms=>3, :rent=>1000}

priced_apartment[:occupants] = []
# => []

lee = { name: 'Lee', age: 24, dog: 'Fluffy' }
# => {:name=>"Lee", :age=>24, :dog=>"Fluffy"}

adrian = { name: 'Adrian', age: 25, cat: 'Scratchy' }
# => {:name=>"Adrian", :age=>25, :cat=>"Scratchy"}

priced_apartment[:occupants].push(lee, adrian)
# => [{:name=>"Lee", :age=>24, :dog=>"Fluffy"},
# {:name=>"Adrian", :age=>25, :cat=>"Scratchy"}]

priced_apartment[:occupants][1].delete(:cat)
# => "Scratchy"

priced_apartment[:rent] += 150
# => 1150

puts apartment
puts priced_apartment