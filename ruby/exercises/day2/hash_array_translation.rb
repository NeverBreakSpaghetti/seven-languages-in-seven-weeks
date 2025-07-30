# How would you translate a hash to an array? Can you translate arrays to hashes?

hash = {'topolino'=>'topolina', 'paperino'=>'paperina', 'pippo'=>'pippa'}
p hash.to_a
# [["topolino", "topolina"], ["paperino", "paperina"], ["pippo", "pippa"]]
# to_a translate hash as array of arrays
#
# PS: use p instead of puts:
#     - Kernel#p method will internally call Array#inspect method that ti is an alias for the Array#to_s method,
#       which prints the object as a string
#     - Array#puts print all elements

array = ['topolino',2,3]
p array.to_h {|element| [element, element] }
# {"topolino"=>"topolino", 2=>2, 3=>3}
# to_h translate array as hash based on given code block mapping
