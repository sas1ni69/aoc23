NUMBERS_AND_DIGITS_REGEX = /one|two|three|four|five|six|seven|eight|nine|\d/
NUMBERS_IN_WORDS = { 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4', 'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9', '1' => '1', '2' => '2', '3' => '3', '4' => '4', '5' => '5', '6' => '6', '7' => '7', '8' => '8', '9' => '9' }

class Main
  def self.run(lines)
    lines
      .map { |line| find_number_and_digits(line) }
      .map { |line| NUMBERS_IN_WORDS.values_at(*line.values_at(0, -1)).join.to_i }
      .sum
  end

  def self.find_number_and_digits(line)
    line.chars
      .map.with_index { |char, index| line[index..-1].scan(NUMBERS_AND_DIGITS_REGEX)[0] }
      .compact
  end
end

puts Main.run(File.readlines('01/input.txt'))
