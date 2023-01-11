println("Введите в одну строку слова через запятую, без пробелов :")
str_arr = split(readline(), ",")
println("Введите подстроку из 5 символов для поиска в словах прошлой строки:")
sub_str = readline()
function find(str, substr)
  if length(substr) != 5
    println("Введеная подстрока содержит некорректное количество символов!")
    return 0
  else
    for i in str
      if occursin(substr, i)
        print(i, " ")
      end
    end
  end
end
println("Исходная строка: ")
for i in str_arr print(i, " ") end
print("\n")
print("Слова в строке с найденной подстрокой:\n")
find(str_arr, sub_str)
