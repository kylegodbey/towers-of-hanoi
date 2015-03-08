puts "How many disks are we playing with?\n"
STDOUT.flush
diskn = gets.chomp
puts "You chose " + diskn + " disks.\n\n"

i = (2**diskn.to_i()) - 1
j = 0

if diskn.to_i().odd? then
  while j < i do
    if j < i then
      puts "Move left disk to right peg\n"
      j += 1
    end
    if j < i then
      puts "Move left disk to center peg\n"
      j += 1
    end
    if j < i then
      puts "Move right disk to center peg\n"
      j += 1
    end
  end
else
  while j < i do
    if j < i then
      puts "Move left disk to center peg\n"
      j += 1
    end
    if j < i then
      puts "Move left disk to right peg\n"
      j += 1
    end
    if j < i then
      puts "Move center disk to right peg\n"
      j += 1
    end
  end
end

puts "You made " + j.to_s() + " moves!"