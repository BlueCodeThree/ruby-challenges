# You have to stop the infamous hackerman by writing a basic security program.

# Your task is to write a program which will ask the user for input twice.
# Both times should ask the user to type words and will display the FIRST input.

# However if any of the words in the second input match with a word from the
# first input it should say "HIDDEN" instead of the matched word.

# Example:
# first_input = bob rob dob mob
# second_input = kob fob dob

# output = bob rob HIDDEN mob

# Check your solution by running:
# ruby 14_hackerman.rb



# 16 April 2019 - I don't think this is the most efficient way to do this but it's what I've got now. 
def hackerman(input1, input2)
    one = input1.split(" ")
    two = input2.split(" ")
    for i in one
        for x in two
            if i == x
                one[one.index(i)] = "HIDDEN"
            end
        end
    end
    return one * " "
end

# this doesn't quite work because the gsub (global sub) also changes things inside words, not just the whole word...
# def hackerman2(input1, input2)
#     input2.split(" ").each do |word|
#         input1.gsub!(word, "HIDDEN")
#     end
#     return input1
# end

puts "Write a sentence about youself and something you like"
input1 = gets.chomp.downcase
puts
puts "Thanks!"
puts "Now, write a sentence about your favourite food"
input2 = gets.chomp.downcase

puts
puts hackerman(input1, input2)

# Beast mode:
# Does your code deal with capital letters? Update your solution so that
# they will be downsized if they are input but HIDDEN remains capitalised.