#store the original div method
div := Number getSlot("/")

#now override it
Number / := method(denom, if(denom==0, 0, self div(denom)))

(1/2) println
(1/0) println
