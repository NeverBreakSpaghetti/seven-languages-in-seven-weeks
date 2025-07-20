# You can use Ruby arrays as stacks. What other common data structures do arrays support?

# array as a stack
array = [1,2,3,4,5]
array.push 6
p array
# [1, 2, 3, 4, 5, 6]
p array.pop
# 6
p array
# [1, 2, 3, 4, 5]

# array as a queue
array = [1,2,3,4,5]
array.push 6
p array
# [1, 2, 3, 4, 5, 6]
p array.shift
# 1
p array
# [2, 3, 4, 5, 6]

# array as a set
array = [1,2,3,4,5]
array.push(1)
p array
# [1, 2, 3, 4, 5, 1]
p array.uniq
# [1, 2, 3, 4, 5]

# array as a deque (double-ended queue)
array = [1,2,3,4,5]
array.unshift(0)
p array
# [0, 1, 2, 3, 4, 5]
array.shift
p array
# [1, 2, 3, 4, 5]
array.push 6
p array
# [1, 2, 3, 4, 5, 6]
p array.pop
# 6
p array
# [1, 2, 3, 4, 5]

# array as a tree (by definition)

# array as a heap (ordering the array)