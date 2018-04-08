# lb7_1.rb

# class
class Text
  def initialize(name = 'file.dat')
    @file_name = name
  end

  def print_self
    File.open(@file_name, 'r').each { |i| puts i } if File.exist?(@file_name)
  end

  def all
    arr = []
    File.open(@file_name, 'r').each { |str| arr.push(str.chomp) }
    arr
  end

  def clear
    File.open(@file_name, 'w')
  end

  def add_line(x1, y1, x2, y2)
    File.open(@file_name, 'a') { |f| f.puts [1, x1, y1, x2, y2].join(' ') }
  end

  def add_circle(x, y, r)
    File.open(@file_name, 'a') { |f| f.puts [2, x, y, r].join(' ') }
  end
end
