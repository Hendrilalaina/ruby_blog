n = 3
10.times do |i|
    print "#{(i + 1) * n}, "
end

# Equivalent to the below code
puts

10.times{|i| print "#{(i + 1) * 3}, "}