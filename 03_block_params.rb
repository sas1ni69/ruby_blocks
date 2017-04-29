class User
  attr_accessor :name, :age

  def greet(&block)
    yield name, age
    puts "welcome to this app"
  end
end

hass      = User.new
hass.name = 'Hass'
hass.age  = 27

hass.greet do |name, age|
  puts "Hi #{name}, you're #{age} years old"
end

