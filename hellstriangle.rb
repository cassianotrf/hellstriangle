a = [[6],[3,5],[7,9,1],[4,6,8,4]]

def multi_array_sum(a)
  sum = 0
  i = 0
  j = 0
  sum = a[i][j]
  #sum is getting the first value from the array a[0][0] = 6
  tam_i = a.length - 1

  while tam_i > 0
    #example: checking if the value "3" from the position [1][0] is bigger than
    #the value "5" from the position [1][1]
    if a[i + 1][j] > a[i + 1][j +1]
      #if yes we add the value 3 into sum
      sum = sum + a[i + 1][j]
    else
       #else we add the value 5 into sum and add 1 to j because we know on the next round the neighboors will be j and j + 1 
       #to check who is bigger
     sum = sum + a[i + 1][j +1]
     j += 1
   end
   tam_i -= 1
   i += 1
  end
  puts sum
end

multi_array_sum(a)

#If you wanna test, unmark the # till line 42
# def validate_multi_array_sum(a,answer)
#   if multi_array_sum(a) == answer
#     puts "Test done without errors"
#   else
#     puts "Function has errors, the answer should be #{answer} and your result was"
#     multi_array_sum(a)
#   end
# end

#answer = 26
# #validate_multi_array_sum(a,answer)
