require 'erb'

x = 42
template = ERB.new "The value of x is: <%= x %>"
puts template.result(binding)

pets = ['max', 'ruby', 'spike']
pet_names = ERB.new "I have three pets named <% pets.each do |pet| %><%= pet.capitalize %>, <% end %>."
puts pet_names.result(binding)

numbers = ERB.new "15 + 45 = <%= 15 + 45 %>"
puts numbers.result(binding)

full_name = "John Doe"
name = ERB.new "Hi, my name is <%= full_name %>"
puts name.result(binding)