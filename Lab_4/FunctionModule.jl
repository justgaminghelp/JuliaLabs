module FunctionModule

  export find_minimal, in_arr, file_out, find_ancient_town

  function find_minimal(arr::Array, row::Int64)
    minimal_e = arr[1][row]
    for i in 1:length(arr)
      if arr[i][row] < minimal_e
        minimal_e = arr[i][row]
      end
    end
    return minimal_e
  end

  function in_arr(file_path, arr::Array)
    file = open(file_path)
    while (!eof(file))
      push!(arr, split(readline(file)))
    end
    close(file)
  end

  function file_out(file_path)
    file = open(file_path)
    for i in eachline(file)
      println(i)
    end
    close(file)
  end

  function find_ancient_town(file_path,arr::Array)
    file = open(file_path, "w")
    minimal_year = find_minimal(arr, 2)
    for i in 1:length(arr)
      if  arr[i][2] == minimal_year
        element = arr[i][1]*" "*arr[i][2]*"\n"
        write(file, element)
      end
    end
    close(file)
  end
end
