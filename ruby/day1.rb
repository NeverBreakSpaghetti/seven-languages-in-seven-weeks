number_to_guess = rand(10)
is_guess_right = false

until is_guess_right
  puts('Guess the number:')
  guess = (gets.chop).to_i

  if guess == number_to_guess
    is_guess_right=true
    puts('You won!')
  end

  puts('Your guess is too low') if guess < number_to_guess
  puts('Your guess is too high') if guess > number_to_guess
end