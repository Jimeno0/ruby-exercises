#Option a) tied to the requeriments
class Milkshake
  attr_reader :ingredients
  def initialize
    @base_price = 3
    @ingredients = []
    @milkshake_price = @base_price
  end
  def add_flavour (flavour)
    @ingredients.push(flavour)
  end
  def get_milkshake_price 
    ingredients.each do |ingredient|
      @milkshake_price += ingredient.price
    end
    @milkshake_price
  end
end

class Ingredient
  attr_reader :price
  def initialize(flavour, price)
    @price = price
    @flavour = flavour
  end
end

class Shake_shop
  def initialize
    @milkshakes = []
    @total_price = 0
  end
  def add_milkshake(milkshake)
    @milkshakes.push(milkshake)
  end
  def get_all_milkshakes
    @milkshakes
  end
  def get_total_bill
    @milkshakes.each do |milkshake|
      @total_price += milkshake.get_milkshake_price
    end
    @total_price
  end
end


#Option b) adding multiple Ingredients/milkshakes at once and price being calculated when we add a ingredients/milkshakes (to avoid calculate price twice)

class Milkshake
  attr_reader :ingredients
  def initialize
    @base_price = 3
    @ingredients = []
    @milkshake_price = @base_price
  end

  def add_flavour (*flavours)
    flavours.each do |flavour|
      @ingredients.push(flavour)
      @milkshake_price += flavour.price
    end
  end

  def get_milkshake_price
    @milkshake_price
  end
end

class Ingredient
  attr_reader :price
  def initialize(flavour, price)
    @price = price
    @flavour = flavour
  end
end

class Shake_shop
  def initialize
    @milkshakes = []
    @total_price = 0
  end

  def add_milkshake(*milkshakes)
    milkshakes.each do |milkshake|
      @milkshakes.push(milkshake)
      @total_price += milkshake.get_milkshake_price
    end
  end

  def get_all_milkshakes
    @milkshakes
  end

  def get_total_bill
    @total_price
  end
end