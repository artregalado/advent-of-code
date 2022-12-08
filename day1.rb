# frozen_string_literal: true

# Part 1
calories = File.read('day1.txt').split("\n").map(&:to_i)

e = calories.slice_before(&:zero?)
total_calories = []

e.each do |array|
  total_calories.push(array.inject(0, :+) { |sum, i| sum + i })
end

puts "Max calories carried by an elf: #{total_calories.max}"

# Part 2
# Find the total of the top three elfs.

calories = File.read('day1.txt').split("\n").map(&:to_i)

e = calories.slice_before(&:zero?)
total_calories = []

e.each do |array|
  total_calories.push(array.inject(0, :+) { |sum, i| sum + i })
end

puts "Max calories carried by an elf: #{total_calories.max(3).sum}"