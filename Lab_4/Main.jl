module MainModule

  include("FunctionModule.jl")
  using .FunctionModule
  #Переменные
  data = []
  file_path = "F.txt"
  gile_path = "G.txt"
  #Основной блок
  in_arr(file_path, data)
  find_ancient_town(gile_path, data)
  #Вывод данных
  println("Данные исходного файла:")
  file_out(file_path)

  println("Данные конечного файла: ")
  file_out(gile_path)

end
