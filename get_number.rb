# Get My Number Game
# Written by : Jurij Kozeev

puts "Welcome to 'Get My Number!'"
print "What's your name? "
name = gets.chomp

puts "Welcome #{name}!"

#puts "First line", "Second line", "Third line"

# Save random number

puts "I've got a random number between 1 and 100."
puts "Can you guess it?"
target = rand(100) + 1

# Watch how trying left

num_guesses = 0

# if game go on

guessed_it = false

until num_guesses == 10 || guessed_it
  puts "You've got #{10 - num_guesses} guesses left."
  guess = gets.to_i

  num_guesses += 1
  # compare input number with guesses
  # and pring message

  if guess < target
    puts "Ooops, Your guess was LOW."
  elsif guess > target
    puts "Ooops. Your guess was HIGH."
  elsif guess == target
    puts "Good job, #{name}!"
    puts "You guessed my number in #{num_guesses} guesses!"
    guessed_it = true
  end

  # if trying not left
  #

end
unless guessed_it
  puts "Sorry. You didn't get my number. (It was #{target}.)"
end
