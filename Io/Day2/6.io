#write a transpose method on TwoDimList 
TwoDimList transpose := method(
	transposedList := TwoDimList clone
	transposedList theList := list()

	x := theList size
	y := theList at(0) size
	# Note - we start with y not x
	for(yIdx, 1, y,
		tempList := list()
		for(xIdx, 1, x, 
			tempList append(theList at(xIdx-1) at(yIdx-1)) 	
		)
		transposedList theList append(tempList) 
	) 
	transposedList
)

twoDimList := TwoDimList clone

"creating two dimensional list using dim(5,2):" println
twoDimList dim(5,2) 
twoDimList theList println

"Now transposing to (2,5):" println
transposedDimList := twoDimList transpose
transposedDimList theList println
