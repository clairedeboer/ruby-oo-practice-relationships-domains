class Ingredient
  attr_accessor :dessert, :bakery, :calorie_count, :ingredient_name
  @@all = []

  def initialize(dessert, bakery, calorie_count, ingredient_name)
    @dessert=dessert
    @bakery=bakery
    @calorie_count=calorie_count
    @ingredient_name=ingredient_name
    @@all << self
  end

  def self.find_all_by_name(ingredient)
    self.all.find_all{|ingredient_instance| ingredient_instance.ingredient_name.include?(ingredient)}
  end

  def self.all
    @@all
  end
end