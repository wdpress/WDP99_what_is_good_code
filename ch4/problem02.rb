# クラス名に依存してしまっている局面
class Customer
  def pay(payment_method)
    case payment_method.class.to_s
    when 'CreditCard'
      payment_method.pay
    when 'Bank', 'Conveni', 'PostOffice'
      payment_method.transfer
    else
      raise ArgumentError.new('unknown payment method')
    end
  end
end

class CreditCard end
class Bank end
class ConvenienceStore end
class PostOffice end

customer = Customer.new
customer.pay(CreditCard.new)
