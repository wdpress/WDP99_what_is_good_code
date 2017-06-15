require 'observer'
require './waterworks'
require './gas'

class Person
  include Observable
  attr_reader :address
  attr_accessor :name, :rent

  def initialize(name, rent, address)
    super()
    @name = name
    @rent = rent
    @address = address

    add_observer(Waterworks.new)
    add_observer(Gas.new)
  end

  def address=(new_address)
    if new_address != @address
      changed
      @address = new_address
      notify_observers(self)
    end
  end

end
