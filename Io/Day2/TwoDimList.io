#Write a prototype for a two dimensional list

TwoDimList := Object clone

#dim(x,y) method
TwoDimList dim := method(x,y,
	self theList := list()
	for(i, 1, x, 
		list2 := list()
		for(i, 1, y, 
			list2 append("elem")
		)
		self theList append(list2)
	)
)

#set(x,y,value) method
TwoDimList set := method(x,y,value,
	theList at(x) atPut(y, value)
)

#get(x,y) method
TwoDimList get := method(x,y,
	theList at(x) at(y) 
)
