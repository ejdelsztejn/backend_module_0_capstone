# Add the following methods to this burrito class and
# call the methods below the class:
# 1. add_topping
# 2. remove_topping
# 3. change_protein

class Burrito
  attr_reader :base
  attr_accessor :protein, :toppings

  def initialize(protein, base, toppings)
    @protein  = protein
    @base     = base
    @toppings = toppings
  end

  def add_topping(topping)
    @toppings << topping
  end

  def remove_topping(topping)
    @toppings.delete(topping)
  end

  def change_protein(protein)
    @protein = protein
  end
end

dinner = Burrito.new("Beans", "Rice", ["cheese", "salsa", "guacamole"])
p dinner.protein
p dinner.base
p dinner.toppings
dinner.add_topping("fajita veggies")
p dinner.toppings
dinner.remove_topping("cheese")
p dinner.toppings
p dinner.change_protein("Tofu")
p "A burrito with #{dinner.protein}, #{dinner.base}, #{dinner.toppings[0]}, #{dinner.toppings[1]}, and #{dinner.toppings[2]}. Yum!"
