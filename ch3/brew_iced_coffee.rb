class Customer
  def order(type)
    barista = Barista.new
    barista.brew(type)
  end
end

class Barista
  def brew(type)
     case type
     when :cappuccino
       espresso = Espresso.new
       milk = Milk.new
       cup = Cup.new
       cup.receive(espresso.brew, milk.steam)
     when :iced_coffee
       coffee_bean = BitterCoffeeBean.new
       ice = Ice.new
       cup = Cup.new
       cup.receive(coffee_bean.brew, ice.make)
     end
  end
end

class Espresso
  def brew
    'エスプレッソ'
  end
end

class Milk
  def steam
    'スチームミルク'
  end
end

class Ice
  def make
    '氷'
  end
end

class BitterCoffeeBean
  def brew
    '濃い味のコーヒー'
  end
end

class Cup
  def receive(*materials)
    materials << 'が入っています'
    materials.join(' ')
  end
end

customer = Customer.new
# カプチーノを注文します
puts customer.order(:cappuccino)
# アイスコーヒーを注文します
puts customer.order(:iced_coffee)
