# Write a matrix to a file and read it back again

# create the two dim list (matrix)
twoDimList := TwoDimList clone
twoDimList dim(2,3)

"Saving matrix to file..." println
File with("matrix.txt") open write(twoDimList serialized) close

"Read matrix back in: " println
readDimList := doFile("matrix.txt")
readDimList println

