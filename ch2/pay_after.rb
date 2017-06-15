class ExceptionCode
  INCORRECT_CREDITCARD = 100
  COMMUNICATION_FAILURE = 101
end

begin
  paid!
rescue ServiceException => ex
  if ex.code == ExceptionCode.INCORRECT_CREDITCARD
    show_error "クレジットカードの情報が誤っています。"
    redirect user_creditcard_path
  elsif ex.code == ExceptionCode.COMMUNICATION_FAILURE
    retry!
  end
end