# CreditCardクラスはLocationクラスの階層に属していない
class CreditCard
end

class Location
  def address
  end
end

class Bank < Location
end

class ConvenienceStore < Location
end

class PostOffice < Location
end
