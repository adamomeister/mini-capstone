# Method accepts two arrays 

# Return array of riffle shuffled input arrays

inp_array1 = [1,3,5] #and 

inp_array2 = [2,4,6] #, output [1,2,3,4,5,6]

# Input arrays are same length, not sorted



def riffle_shuffle(inp_array1, inp_array2)
  output_array = []
  i1 = 0
  inp_array1.length.times do
    output_array << inp_array1[i1]
    output_array << inp_array2[i1]
    i1 += 1
  end
  return output_array
end

p riffle_shuffle([1,3,5], [2,4,6]) 