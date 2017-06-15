# Payableモジュールを作成し、支払い方法という役割を持たせる
module Payable
  def pay
    # 支払いの実装
  end
end

class CreditCard
  include Payable
end

class Location
  def address
  end
end

class Bank < Location
  include Payable
end

class ConvenienceStore < Location
  include Payable
end

class PostOffice < Location
  include Payable
end
