//Use foldLeft to compute the total size of a list of strings
val list = List("edward", "scissorhands")
println(list.toString + " total size is " + list.foldLeft(0)((sum, value) => sum + value.size))
