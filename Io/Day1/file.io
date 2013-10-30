m := method("hello world" println)
m()

//execute method in a slot
Pineapple := Object clone
Pineapple description := method("Prickly" println)
s := Pineapple getSlot("description")
s()

