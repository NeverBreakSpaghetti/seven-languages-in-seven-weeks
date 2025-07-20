# Can you iterate through a hash?
hash = {'topolino'=>'topolina', 'paperino'=>'paperina', 'pippo'=>'pippa'}

hash.each { |element| puts "key: #{element.to_a[0]}, value: #{element.to_a[1]}" }
# key: topolino, value: topolina
# key: paperino, value: paperina
# key: pippo, value: pippa

hash.each { |key, value| puts "key: #{key}, value: #{value}" }
# key: topolino, value: topolina
# key: paperino, value: paperina
# key: pippo, value: pippa
