# initialise two dimensional array
two_dim_array := list(list(1,2), list(3,4), list(5,6))

# define method to sum two dim array
sumTwoDimArray := method(theList, 
	total := 0
	theList foreach(i, total = total + i sum)
	total
)

#invoke method
sumTwoDimArray(two_dim_array) println




