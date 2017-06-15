def decorate_string(str)
  "*** #{str} ***"
end

if hour < 12
  puts decorate_string("AM #{hour} 時")
else
  puts decorate_string("PM #{hour - 12} 時")
end
