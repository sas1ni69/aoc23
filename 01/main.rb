puts File.readlines('input.txt')
  .map { |line| line.scan(/-?\d/) }
  .map { |line| line.values_at(0, -1).join.to_i }
  .sum
