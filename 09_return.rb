class User
  def archive(&block)
    puts 'step 1'
    puts 'could not complete step 2' if yield == false
    puts 'step 3'
  end
end

user = User.new

user.archive do
  puts 'step 2.1'
  next
  puts 'step 2.2'
end

# >> step 1
# >> step 2.1
# >> step 3
