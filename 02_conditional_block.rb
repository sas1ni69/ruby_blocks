class User
  attr_accessor :name

  def greet
    puts "hello #{name}"
    yield if block_given?
  end
end

user      = User.new
user.name = 'Hass'

user.greet # =>


# AR find_each
# >> hello Hass
# ~> /Users/hassanin/Sites/ruby/presentations/ruby_blocks/02_conditional_block.rb.rubyeval:6:in `greet': no block given (yield) (LocalJumpError)
# ~> 	from /Users/hassanin/Sites/ruby/presentations/ruby_blocks/02_conditional_block.rb.rubyeval:13:in `<main>'
