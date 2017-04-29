class User < ActiveRecord::Base
end

# 1
User.new(name: 'Hass')


# 2
User.new do |user|
  user.name = 'Hass'
end


# 3
User.new(name: 'Hass') do |user|
  user.age = 27
end

# 4
user      = User.new
user.name = 'Hass'

