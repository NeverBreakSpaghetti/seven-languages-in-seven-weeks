# Find out how to access files with and without code blocks. What is the benefit of the code block?

# Without code block
file = File.open('day2/open_me.txt')
puts file.readline
file.close

# With code blok
File.open('day2/open_me.txt') do |fileInput|
  puts fileInput.read
end

# Benefit: using code block, file is automatically closed at the end