class Listing
    attr_accessor :city
    @@all = []
    def initialize(city)
        @city = city
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_all_by_city(city)
        Trip.all.select {|trip| trip.listing.city == city}
    end

    def self.most_popular
        Listing.all.max {|city_a, city_b| city_a.trip_count <=> city_b.trip_count}
    end

    def trips
        Trip.all.select {|trip| trip.listing == self} 
    end

    def guests
        self.trips.map {|trips_at_listing| trips_at_listing.guest}
    end


    def trip_count
        self.trips.count
    end
end
