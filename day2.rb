games = File.open('./data/day2.txt')

lookup = {:A => 'Rock', :B => 'Paper', :C => 'Scissors',
          :Y => 'Paper', :X => 'Rock', :Z => 'Scissors'}

outcomes = {:Rock => 1, :Paper => 2, :Scissors=> 3}

points = 0
games.each do |line|
  game = line.chomp.split(' ')
  elf_decision = lookup[game[0].to_sym]
  my_decision = lookup[game[1].to_sym]

  if elf_decision.to_sym == my_decision.to_sym
    points += 3
    points += outcomes[my_decision.to_sym]
  elsif elf_decision == 'Paper' and my_decision == "Rock"
    points += 0
    points += outcomes[my_decision.to_sym]
  elsif elf_decision == 'Rock' and my_decision == 'Scissors'
    points += 0
    points += outcomes[my_decision.to_sym]
  elsif elf_decision == 'Scissors' and my_decision == 'Paper'
    points += 0
    points += outcomes[my_decision.to_sym]
  else
    points += 6
    points += outcomes[my_decision.to_sym]
  end
end

puts "Total points scored for the strategy #{points}"


