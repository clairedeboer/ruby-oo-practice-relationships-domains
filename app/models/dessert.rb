class Dessert
  attr_accessor :dessert_name, :bakery
  @@all = []

  def initialize(dessert_name, bakery)
    @dessert_name = dessert_name
    @bakery = bakery
    @@all << self
  end

  def ingredients
  Ingredient.all.find_all{|ingredient| ingredient.dessert == self}
  end

  # def calories
  # end

  def self.all
    @@all
  
  end
end