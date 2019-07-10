class Subset
  def initialize
    @subsets = []
  end

  def finder(arr, pos = 0)
    
  end
end

def factorial(num)
  return 1 if num.zero?

  factorial(num - 1) * num
end

def iterative_subset(arr)
  length_of_arr = arr.length
  subset_length = factorial(length_of_arr)
  subset = []
  i = 2

  until subset.length >= subset_length
    arr.length.times do

      new_arr = arr[-i, length_of_arr]

      new_arr.length.times do
        permutation = arr[0, length_of_arr - i] + new_arr.rotate!(-1)
        subset << permutation
      end
      if i + 1 == length_of_arr
        arr.rotate!(-1)
        i = 2
      else
        i += 1
      end
    end
  end
  subset.each { |perm| print "#{perm}\n" }
end

iterative_subset([1, 2, 3, 4])
# print [1, 2, 3][-2, 3]

# [1, 2, 3]
# [1, 3, 2]
# [3, 1, 2]
# [3, 2, 1]
# [2, 3, 1]
# [2, 1, 3]
