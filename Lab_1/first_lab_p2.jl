println("Введите число, для определния количества в нем цифр кратных трем:")
num = parse(Int64, readline()) #Само число

function while_num(num_e)
  k_e = 0
  while num_e > 0
    if ((num_e % 10) % 3) == 0
      k_e += 1
    end
    num_e = div(num_e, 10)
  end
  return k_e
end
function for_num(num_e)
  k_e = 0
  for i in range(1,length(string(num_e)))
    if ((num_e % 10) % 3) == 0
      k_e+=1
    end
    num_e = div(num_e, 10)
  end
  return k_e
end


println("Какой цикл вы хотите использовать ?")
loop_type = lowercase(readline()) #Переключатель типа цикла
if loop_type == "while"
  println("Количество кратных трем цифр в числе: ", while_num(num))
elseif loop_type == "for"
  println("Количество кратных трем цифр в числе: ", for_num(num))
else
  print("Некорректно введен тип цикла. Возможны for или while")
end
