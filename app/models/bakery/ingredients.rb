class Ingredients
    attr_accessor :name, :calories, :dessert
    @@all = []
    
    def initialize(name, calories, dessert=nil)
        @name = name
        @calories = calories
        @dessert = dessert
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_all_by_name(ingredient)
        Ingredients.all.find_all {|i| i.name.include?(ingredient)}
    end

    def bakery
        self.dessert.bakery
    end
end