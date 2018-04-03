i = 0
mark = "hungry"
while mark == "hungry"
  puts "Do you want ramen, rice or sausage?"
  input = gets.chomp
  case input
  when "ramen"
    i += 20
  when "rice"
    i += 10
  when "sausage"
    i += 30
  if i > 100
    mark == "not hungry"
    puts "mark is full now"
    break
  end
  end

end
