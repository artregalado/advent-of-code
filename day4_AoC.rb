# Part 1
f = File.open('aoc_day4.txt')
duplicate_activity = 0
f.each do |line|
  assignments = line.chomp.split(',')
  elf1_min = assignments[0].split('-')[0]
  elf1_max = assignments[0].split('-')[1]
  elf2_min = assignments[1].split('-')[0]
  elf2_max = assignments[1].split('-')[1]
  elf1_assignment = (elf1_min..elf1_max).to_a
  elf2_assignment = (elf2_min..elf2_max).to_a

  if (elf1_assignment - elf2_assignment).empty? || (elf2_assignment - elf1_assignment).empty?
    duplicate_activity += 1
  end
end
puts "First part of the duplicates problem"
puts "Duplicates: #{duplicate_activity}"


# Part 2

puts "Second part of the duplicates problem"

f = File.open('aoc_day4.txt')
duplicate_activity_2 = 0
f.each do |line|
  assignments = line.chomp.split(',')
  elf1_min = assignments[0].split('-')[0]
  elf1_max = assignments[0].split('-')[1]
  elf2_min = assignments[1].split('-')[0]
  elf2_max = assignments[1].split('-')[1]
  elf1_assignment = (elf1_min..elf1_max).to_a
  elf2_assignment = (elf2_min..elf2_max).to_a

  if elf1_assignment.intersect?(elf2_assignment)
    duplicate_activity_2 += 1
  end
end

puts "Duplicates: #{duplicate_activity_2}"
