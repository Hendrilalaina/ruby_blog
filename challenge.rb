def fizzbuzz(n)
  i = 1
  until i > n
    if i.modulo(15) == 0
      puts "FizzBuzz for  #{i}"
    elsif i.modulo(3) == 0
      puts "Fizz for #{i}"
    elsif i.modulo(5) == 0
      puts "Buzz for #{i}"
    end
    i += 1
  end
end

fizzbuzz(50)