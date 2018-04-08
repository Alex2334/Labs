# tui_for_solve.rb
load 'solve.rb'
puts 'Введите a:'
a = gets.to_f
puts 'Введите b:'
b = gets.to_f
puts "Результат вычисления ((sin(#{a}) - #{b}) / (|#{b}| + cos(#{b}^2))) равен"
puts solve(a, b)
