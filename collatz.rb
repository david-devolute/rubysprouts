def collatz_sequence(start)
  steps = 0
  max = 0
  while start != 1 do
    steps += 1
    print start.to_s + ' '
    max = start if start > max
    if start.even?
      start /= 2
    else
      start = start * 3 + 1
    end
  end
  puts start
  puts "Terminated after #{steps} steps"
  puts "Maximum #{max}"
end

def collatz_sequence2(start)
  begin
    print start.to_s + ' '
    if start.even?
      start = start / 2
    else
      start = start * 3 + 1
    end
  end while start != 1
  print start
end

collatz_sequence(6)
puts
collatz_sequence2(6)
