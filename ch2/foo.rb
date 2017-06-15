class Foo
  attr_accessor :bar

  def print(content)
    @bar + content
  end
end

foo = Foo.new
foo.bar = "WEB+DB PRESS Vol."

method1(foo)
method2(foo)
method3(foo)

foo.print("99") # => NoMethodError: undefined method `+' for nil:NilClass