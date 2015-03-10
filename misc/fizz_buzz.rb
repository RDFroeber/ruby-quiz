# require "pry"

# loop through nums
# if n % 3 || n % 5 is not fraction then print FizzBuzz
# else if n/3 is not fraction print Fizz
# else if if n/5 is not fraction print Buzz

# Option 1
(1..100).each do |n| 
  if n%3 == 0 && n%5 == 0
    puts "FizzBuzz"
  elsif n%3 == 0
    puts "Fizz"
  elsif n%5 == 0
    puts "Buzz"
  else
    puts n
  end
end

# Option 2 with array
nums = (1..100).map do |n| 
  if n%3 == 0 && n%5 == 0
    n = "FizzBuzz"
  elsif n%3 == 0
    n = "Fizz"
  elsif n%5 == 0
    n = "Buzz"
  else
    n = n
  end
end

print nums
