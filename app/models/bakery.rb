class Bakery
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def ingredients
    Ingredient.all.find_all{|ingredient| ingredient.bakery == self}
  end

  def desserts
    Dessert.all.find_all{|dessert| dessert.bakery == self}
  end

  # def average_calories
  # end

  # def shopping_list
  #   ingredients.map{|ingredient| ingredient.}
  # end

  def self.all
    @@all
  end
end