# Ruby
load 'string_array.rb'
puts 'Введите строки'
a = Text.new
a.add_lines!
puts "Исходные строки \n#{a.lines}\nКонец вывода исходных строк"
puts "Измененные строки \n#{a.correct}\nКонец вывода измененных строк"
if a.last_correct_count > 0
  puts "Количество удаленных слов: #{a.last_correct_count}"
else
  puts 'Удаленных слов нет'
end
