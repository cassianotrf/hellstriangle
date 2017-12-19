b = [[6],[3,5],[7,9,1],[4,6,8,4]]

def multi_array_sum(a)
  sum = 0
  i = 0
  j = 0
  sum = a[i][j]
  tam_i = a.length - 1
  while tam_i > 0

    if a[i + 1][j] > a[i + 1][j +1]
      sum = sum + a[i + 1][j]
    else
     sum = sum + a[i + 1][j +1]
     j += 1
   end

   tam_i -= 1
   i += 1
  end
  puts sum
end

multi_array_sum(b)

