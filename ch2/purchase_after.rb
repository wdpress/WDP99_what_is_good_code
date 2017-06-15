def product_purchase(user, product)
  if pay_for(product)
    order = create_order user.id, product.id
    send_ordered_mail product.name, user.mail
  end
end

def create_order(user_id, product_id)
  order = Order.new(user_id, product_id)
  order.save
end

def pay_for(product)
  payment = Payment.new(product.price)
  payment.pay
end

def send_ordered_mail(product_name, user_mail)
  # ユーザーに注文が完了したことを送信
  mail = Mail.new do
    from    "from@example.co.jp"
    to      user_mail
    subject "商品を購入しました"
    body    "#{product_name}を購入しました"
  end
  mail.deliver
end