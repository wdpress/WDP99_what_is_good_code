# payment_methodが何であるかについては関心を持っていない
class Customer
  def pay(payment_method)
    payment_method.pay
  end
end
