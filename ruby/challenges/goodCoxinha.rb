require 'bigdecimal'

line = gets.split(" ")
a = line[0].to_f
b = line[1].to_f

med = a / b
puts '%.2f' % med