class Main
  def self.run(lines)
    lines.map do |line|
      line.scan(/(\d+) (\w+)/)
        .each_with_object({}) { |(number, color), hash| hash[color] ||= []; hash[color] << number.to_i }
        .transform_values(&:max)
        .values
        .inject(:*)
    end.sum
  end
end

puts Main.run(File.readlines('02/input.txt'))
