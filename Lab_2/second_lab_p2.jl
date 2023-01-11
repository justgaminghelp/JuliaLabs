println("Введите число для задания квадратной матрицы: ")
n = parse(Int64, readline())
matrix = fill('*', (n, n))

function diagonals_output(n)
  println("Исходная матрица :")
  for i in 1:n
    for j in 1:n
      print(matrix[i, j])
    end
    println("")
  end
  println("Вывод главной и побочной диагонали :")
  for i in 1:n
    for j in 1:n
      if i == j || (i + j - 1) == n
        print("*")
      else
        print(" ")
      end
    end
    print("\n")
  end
end

diagonals_output(n)
