# Write a simple grep that will print the lines of a file having any occurrences of a phrase anywhere in that line.
# You will need to do a simple regular expression match and read lines from a file.
# (This is surprisingly simple in Ruby.) If you want, include line numbers.

def grep(file_path, string_to_match)
  lines_with_match = []
  file = File.open(file_path)
  file.each do | line |
    lines_with_match.push line if line.match(string_to_match)
  end
  puts lines_with_match
end

grep'day2/open_me.txt', 'Hello World'