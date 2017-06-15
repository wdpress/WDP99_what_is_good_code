begin
  pay!
rescue ServiceException => ex
  if ex.code == 100
    show_error "クレジットカードの情報が誤っています。"
    redirect user_creditcard_path
  elsif ex.code == 101
    retry!
  end
end