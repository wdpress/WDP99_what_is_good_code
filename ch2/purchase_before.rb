def product_paid_and_send_mail(user, product)
  # 決済処理
  payment = Payment.new(product.price)
  if payment.pay
    # 注文を作成
    order = order.new(user.id, product.id)
    order.save

    # ユーザーに注文が完了したことを送信
    mail = Mail.new do
      from    "from@example.co.jp"
      to      user.mail
      subject "商品を購入しました"
      body    "#{product.name}を購入しました"
    end
    mail.deliver
  end
end