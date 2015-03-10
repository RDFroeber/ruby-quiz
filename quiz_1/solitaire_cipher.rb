# The Solitaire Cipher (1)
require "pry"

def choose_mode
  puts "What would you like to do?"
  puts "[1] Encode some text"
  puts "[2] Decode some text"
  choice = gets.chomp.to_i

  case choice
    when 1
      puts "Encode your text:"
      text = gets.chomp
      encode(text)
    when 2
      puts "Decode your text:"
      text = gets.chomp
      decode(text)
    else
      puts "Sorry please try again"
      choose_mode
    end
end

def convert_to_nums(array)
  nums = []
  alphabet = ('A'..'Z').to_a

  array.each do |part|
    binding.pry
    part.each_char do |char| 
      # To Do: Do something with nums
      nums.push(alphabet.index(char) + 1)
    end
  end
end

def encode(message)
  parts = []
  index = 0
  alpha = message.scan(/([a-z]+)/i).flatten(1).join()

  until !alpha[index, 5] do
    part = alpha[index, 5].upcase
    if part.length < 5
      (5 - part.length).times { part += "X" }
    end
    parts.push(part)
    index += 5
  end

  convert_to_nums(parts.grep(String))

  # TO Do: Generate keystream

end


def decode(message)
  puts message
end

choose_mode


