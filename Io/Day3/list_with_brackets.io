#Create a list syntax that uses brackets

curlyBrackets := method(
	theList := list clone
	call message arguments foreach(arg,
		theList append(arg)
	)
	theList
)

list{1,2,3} println


