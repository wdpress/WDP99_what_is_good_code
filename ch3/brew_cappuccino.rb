class Customer
  def order
    espresso = Espresso.new
    milk = Milk.new
    cup = Cup.new
    cup.receive(espresso.brew, milk.steam)
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

class Cup
  def receive(*materials)
    materials << 'が入っています'
    materials.join(' ')
  end
end

customer = Customer.new
puts customer.order
