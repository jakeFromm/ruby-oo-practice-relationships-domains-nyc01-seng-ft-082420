require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# AIRBNB TEST CASES:
# jake = Guest.new("jake")
# jane = Guest.new("jane")
# nyc = Listing.new("new york")
# los_angeles = Listing.new("los angeles")
# jake_nyc = Trip.new(nyc, jake)
# jane_nyc = Trip.new(nyc, jane)
# jake_la = Trip.new(los_angeles, jake)

#BAKERY TEST CASES
# butter = Ingredients.new("butter", 50)
# flour = Ingredients.new("flour", 30)
# eggs = Ingredients.new("eggs", 60)

# milk = Ingredients.new("milk", 80)
# chocolate = Ingredients.new("chocolate", 90)

# milk_chocolate = Desserts.new("milk chocolate")
# cake = Desserts.new("cake")
# milk_bar = Bakery.new("milk bar")
# butter.dessert = cake
# flour.dessert = cake
# eggs.dessert = cake
# cake.bakery = milk_bar
# milk.dessert = milk_chocolate
# chocolate.dessert = milk_chocolate
# milk_chocolate.bakery = milk_bar


Pry.start
