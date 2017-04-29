class User
  attr_accessor :name, :age

  def greet(&block)
    if block.arity == 1 
      yield self
    else
      raise StandardError 'Not enough arguments'
    end

    puts "welcome to this app"
  end
end

user      = User.new
user.name = 'Hass'
user.age  = 27

user.greet do |hass|
  puts "Hi #{hass.name}, you are #{hass.age} years old"
end

# ~> /Users/hassanin/Sites/ruby/presentations/ruby_blocks/04_block_arity.rb.rubyeval:8:in `greet': undefined method `StandardError' for #<User:0x007fe431148b98 @name="Hass", @age=27> (NoMethodError)
# ~> 	from /Users/hassanin/Sites/ruby/presentations/ruby_blocks/04_block_arity.rb.rubyeval:19:in `<main>'
