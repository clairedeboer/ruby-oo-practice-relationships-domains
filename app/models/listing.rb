# create files for your ruby classes in this directory
class Listing
  attr_accessor :city
  @@all = []

  def initialize(city)
    @city = city
    @@all << self
  end

  def trips
    Trip.all.find_all {|trip| trip.listing == self}
  end

  def guests
    trips.map {|trip| trip.guest}
  end

  def trip_count
    trips.count
  end

  def self.all
    @@all
  end

  def self.find_all_by_city(city)
    self.all.find_all {|listing| listing.city == city}
  end

  def self.most_popular
    self.all.max {|listing1, listing2| listing1.trip_count <=> listing2.trip_count}
  end
  
end