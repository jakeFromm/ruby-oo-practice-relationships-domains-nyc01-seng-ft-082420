class Desserts
    attr_accessor :name, :bakery
    @@all = []
    def initialize(name, bakery=nil)
        @name = name
        @bakery = bakery
        @@all << self
    end

    def self.all
        @@all
    end

    def ingredients
        Ingredients.all.filter {|ingredient| ingredient.dessert == self}
    end

    def calories
        cal = 0
        self.ingredients.each {|i| cal += i.calories}
        cal
    end
end