println("Введите 45 вещественных числе друг за другом через пробел:")
nums = split(readline())

function special_array_sort(before_sort)
  before_sort = map((x) -> parse(Float64, x), before_sort)
  null_count = count(x->(x == 0.0), before_sort)
  deleteat!(before_sort, findall(x -> x == 0, before_sort))
  after_sorting = append!(sort(before_sort, rev = true), zeros(null_count, 1))
  return after_sorting
end

print("Отсортированный массив: ", special_array_sort(nums))
