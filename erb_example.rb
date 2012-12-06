require 'erb'

x = 42
template = ERB.new "The value of x is: <%= x %>"
puts template.result(binding)

pets = ['max', 'ruby', 'spike']
names = ERB.new "I have three pets named <% pets.each do |pet| %><%= pet.capitalize %>, <% end %>."
puts names.result(binding)