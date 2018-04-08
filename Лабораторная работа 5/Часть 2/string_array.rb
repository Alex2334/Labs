# Ruby
# list of strings class
class Text
  attr_reader :lines, :last_correct_count

  def initialize
    clear!
  end

  def add_lines!
    loop do
      line = gets.chomp
      break if line.empty?
      add_lines_as_param! [line]
    end
  end

  def add_lines_as_param!(b = [])
    @lines += b
  end

  def clear!
    @lines = []
    @last_correct_count = 0
  end

  def correct
    @last_correct_count = 0
    @lines.map do |line|
      line.split.select do |wrd|
        contained = (/a|e|i|o|u|y|е|ы|а|о|э|у|я|и|ё|ю/i =~ wrd)
        @last_correct_count += 1 unless contained
        contained
      end.join(' ')
    end
  end
end
