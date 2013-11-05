#enhance XML to correctly format with spaces

Builder := Object clone

# indenting variables and methods
Builder depthCount := 0
Builder incrementDepth := method(depthCount = depthCount + 3)
Builder decrementDepth := method(depthCount = depthCount - 3)
Builder indent := method( 	for(i, 0, depthCount, write(" ")) )

Builder forward := method(
  indent writeln("<", call message name, ">")
  incrementDepth
  call message arguments foreach(
	arg, 
	content := self doMessage(arg); 
	if(content type == "MapBrackets", write("boo"));
	if(content type == "Sequence", indent writeln(content)))

  decrementDepth
  indent writeln("</", call message name, ">"))

Builder  ul(
	li({"attr" : "value"}, "Io"), 
	li("Lua"), 
	li("JavaScript"))

