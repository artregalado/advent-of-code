input = File.open('./data/day5.txt')

stack = [%w[J H P M S F N V],
         %w[S R L M J D Q],
         %w[N Q D H C S W B],
         %w[R S C L],
         %w[M V T P F B],
         %w[T R Q N C],
         %w[G V R],
         %w[C Z S P D L R],
         %w[D S J V G P B F]
]

input.each_line do |line|
  processed = line.chomp.gsub(" ","")
  move = processed.match(/\d*(?=from)/).to_s.to_i
  from = processed.match(/\d*(?=to)/).to_s.to_i
  to = processed.match(/(?<=to)\d*/).to_s.to_i

  # -1 needs to be added because Ruby's 0 index
  stack[to-1].push(stack[from-1].pop(move).reverse).flatten!

end

message = []
stack.each{|container| message.push(container.last)}
p message.join("")


# Part two is requires not reversing. As the crates can be taken together.
input = File.open('./data/day5.txt')

stack = [%w[J H P M S F N V],
         %w[S R L M J D Q],
         %w[N Q D H C S W B],
         %w[R S C L],
         %w[M V T P F B],
         %w[T R Q N C],
         %w[G V R],
         %w[C Z S P D L R],
         %w[D S J V G P B F]
]

input.each_line do |line|
  processed = line.chomp.gsub(" ","")
  move = processed.match(/\d*(?=from)/).to_s.to_i
  from = processed.match(/\d*(?=to)/).to_s.to_i
  to = processed.match(/(?<=to)\d*/).to_s.to_i

  # -1 needs to be added because Ruby's 0 index
  stack[to-1].push(stack[from-1].pop(move)).flatten!

end

message = []
stack.each{|container| message.push(container.last)}
p message.join("")
