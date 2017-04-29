class User
  attr_accessor :name, :age

  def to_s
    puts "#{name} is #{age} years old"
  end

  def to_proc
    Proc.new { self }
  end
end

def hello
  yield.to_s
end

hass = User.new
hass.name = 'Hass'
hass.age  = 27

hello(&hass) # =>
# >> it is really coming here
# ~> /Users/hassanin/Sites/ruby/presentations/ruby_blocks/08_to_proc.rb.rubyeval:21:in `<main>': wrong argument type User (expected Proc) (TypeError)
