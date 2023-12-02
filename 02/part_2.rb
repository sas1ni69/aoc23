class Main
  def self.run(lines)
    lines.map do |line|
      _, sets = line.split(':', 2)

      min_blue  = get_minimum_cubes_by_colour(sets, 'blue')
      min_green = get_minimum_cubes_by_colour(sets, 'green')
      min_red   = get_minimum_cubes_by_colour(sets, 'red')

      min_blue * min_green * min_red
    end.compact.sum
  end

  def self.get_minimum_cubes_by_colour(sets, color)
    sets.scan(/(\d+) #{color}/).flatten.map(&:to_i).max
  end
end

puts Main.run(File.readlines('02/input.txt'))
