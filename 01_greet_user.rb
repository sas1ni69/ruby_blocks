def greet_user(name)
  puts "hello #{name}"
  yield
end

greet_user('Hass') do
  puts "welcome to this app"
end

