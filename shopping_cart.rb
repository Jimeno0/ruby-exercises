class Shopping_cart
  def initialize
    @items = []
  end

  def add_items(*items)
    items.each do |item|
      @items.push(item)  
    end
    
  end

  def checkout
    total = 0
    @items.each do |item|
      total += item.get_price
    end
    if @items.length >= 5
      total = total * 90 / 100
    end
    total
  end
end

class Items
  def initialize(name, price)
    @name = name
    @price = price.to_f
  end

  def get_price
    @price
  end
end

class Fruit < Items
  def get_price
    day = Time.new.wday 
    if day == 6 || day == 0
      price = @price * 95 / 100
    else
      price = @price
    end
  end
end

class Housewares < Items
  def get_price
    if @price > 100
      price = @price * 90 / 100
    else
      price = @price
    end
    price
  end
end