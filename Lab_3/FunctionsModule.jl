module MatrixFunctions

export create_matrix, d_element_to_max, max_in_row, mat_out

function create_matrix(row::Int, column::Int)
  arr = [rand(1:9, row) for i in 1:column]
  return arr
end

function d_element_to_max(arr::Array)
  for i in eachindex(arr[1])
    max = max_in_row(arr, i)
    for j in eachindex(arr)
      if i == j || ((i + j - 1) == size(arr)[1])
        arr[j][i] = max
      end
    end
  end
  return arr
end

function max_in_row(arr::Array, row::Int)
  max = arr[1][row]
  for i in eachindex(arr)
    if arr[i][row] > max
      max = arr[i][row]
    end
  end
  return max
end

function mat_out(arr::Array)
  for i in eachindex(arr[1])
    for j in eachindex(arr)
      print(arr[j][i], " ")
    end
    print("\n")
  end
  print("\n")
end

end
