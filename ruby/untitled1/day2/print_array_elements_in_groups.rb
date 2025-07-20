# Print the contents of an array of sixteen numbers, four numbers at a time, using just each.
# Now, do the same with each_slice in Enumerable.

array = (1..16).to_a
row = []

array.each do |element|
  row.push element
  if row.length == 4
    puts row.join(" ")
    row = []
  end
end

array.each_slice(4) {|tuple| puts tuple.join(" ")}