class Main
  MAX_BLUE = 14
  MAX_GREEN = 13
  MAX_RED = 12

  def self.run(lines)
    lines.map do |line|
      game_id_label, sets = line.split(':', 2)
      game_id = game_id_label.scan(/\d+/).first.to_i

      all_sets_possible = sets.split(';').all? do |set|
        blue_count  = set.scan(/\d+ blue/).first.to_i
        green_count = set.scan(/\d+ green/).first.to_i
        red_count   = set.scan(/\d+ red/).first.to_i

        blue_count <= MAX_BLUE && green_count <= MAX_GREEN && red_count <= MAX_RED
      end

      if all_sets_possible
        puts "Game #{game_id} is VALID"
        game_id
      end
    end.compact.sum
  end
end

puts Main.run(File.readlines('02/input.txt'))
