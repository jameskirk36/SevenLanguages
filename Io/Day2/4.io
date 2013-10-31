# add a myAverage method to list to compute the average, or throw an exception if a non-number occurs

# method to determine whether an object is of type Number
isNum := method(item,
	item type == Number type
)

List myAverage := method(
	total := 0
	self foreach(i, if(isNum(i), total = total+i, Exception raise("Help I'm Not a number!")))
	total/self size
)

list(2,3,4) myAverage println
list(2,3,"boo") myAverage println
