class Trip
  attr_accessor :listing, :guest, :trip_number
  @@all = []

  def initialize(listing, guest, trip_number)
    @listing = listing
    @guest = guest
    @trip_number = trip_number
    @@all << self
  end

  def self.all
    @@all
  end
end