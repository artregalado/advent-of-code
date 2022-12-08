[4, 14].each_with_object(File.read('./data/day6.txt').chars) do |length, chars|
  puts length + chars.each_cons(length).find_index { |arr| arr.eql? arr.uniq }
end