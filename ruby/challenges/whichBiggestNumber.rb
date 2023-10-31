def whichNumberIsBiggest
    number1 = gets.to_i
    number2 = gets.to_i
    if number1 > number2
      puts "O número #{number1} é o maior e o #{number2} é o menor"
    elsif number2 > number1
      puts "O número #{number2} é o maior e o #{number1} é o menor"
    else
      puts "O número #{number1} é o igual ao #{number2}"
    end
  end
  
  whichNumberIsBiggest