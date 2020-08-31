class Bakery

    @@all = []
    
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def desserts
        Desserts.all.filter {|dessert| dessert.bakery == self}
    end

    def ingredients
        self.desserts.map {|des| des.ingredients}
    end

    def average_calories
        avg_cal = 0
        self.desserts.each {|d| avg_cal += d.calories}
        avg_cal /= self.desserts.count
    end

    def shopping_list
        shop_list = []
        self.desserts.each do |dessert| 
            shop_list << dessert.ingredients.map {|ingredient| ingredient.name}
        end
        shop_list.join(", ")
    end
end

#### Bakery

# - #ingredients
#   - should return an array of ingredients for the bakery's desserts
# - #desserts
#   - should return an array of desserts the bakery makes
# - #average_calories
#   - should return a number totaling the average number of calories for the desserts sold at this bakery
# - .all
#   - should return an array of all bakeries
# - #shopping_list
#   - should return a string of names for ingredients for the bakery


#   You are building an app for a national bakery chain

# - your models are bakeries, desserts, ingredients
#   - a bakery has many desserts
#   - a dessert belongs to a bakery
#   - a dessert has many ingredients
#   - an ingredient belongs to a dessert
#     - every ingredient has a calorie count