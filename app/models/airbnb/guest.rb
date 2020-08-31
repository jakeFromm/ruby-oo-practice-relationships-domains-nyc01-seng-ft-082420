class Guest
    attr_accessor :name
    @@all = []
    
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.pro_traveller 
        Guest.all.select {|traveler| traveler.trip_count > 1}
    end

    def self.find_all_by_name(name)
        Trip.all.select {|trips_taken| trips_taken.guest.name == name}
    end
    
    def trips 
        Trip.all.select {|trip| trip.guest == self}
    end

    def listings 
        self.trips.map {|trip_instance| trip_instance.listing}
    end

    def trip_count 
        self.trips.count
    end
end
