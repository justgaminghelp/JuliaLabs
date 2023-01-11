module Main

include("FunctionsModule.jl")
using .MatrixFunctions
using Test

print("Enter n and m: \n")
n,m = parse(Int64, readline()), parse(Int64, readline())

before_cng = create_matrix(n, m)
mat_out(before_cng)
before_cng = d_element_to_max(before_cng)
mat_out(before_cng)

@testset "FunctionsTest" begin
  @testset "FindMaxTest" begin
    @test max_in_row([[1, 2], [3, 4], [5, 6]], 1) == 5
    @test max_in_row([[11, 21, 31, 41], [12, 22, 32, 42], [13, 23, 33, 43]], 4) == 43
  end
  @testset "FinalMatrix" begin
    @test d_element_to_max([[1, 2, 3], [4, 5, 6], [7, 8, 9]]) == [[7, 2, 9], [4, 8, 6], [7, 8, 9]]
    @test d_element_to_max([[11, 21, 31, 41, 51], [12, 22, 32, 42, 52], [13, 23, 33, 43, 53], [14, 24, 34, 44, 54]]) == [[14, 21, 31, 44, 51], [12, 24, 34, 42, 52], [13, 24, 34, 43, 53], [14, 24, 34, 44, 54]]
  end
end

end
