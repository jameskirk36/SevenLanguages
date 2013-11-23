// Find a TIC TAC TOE winner given a 3x3 board

trait Value

object X extends Value{
	override def toString = "X"
}

object O extends Value{
	override def toString = "O"
}

object B extends Value{ // blank space
	override def toString = "_"
}

// Define a class for the tic tac toe board (3x3)
class Board(v1: Value, v2: Value, v3: Value, v4: Value, v5: Value, v6: Value, v7: Value, v8: Value, v9: Value){
	val players = List(X,O)

	val board = List(
		 List(v1,v2,v3), // row1 
		 List(v4,v5,v6), // row2 
		 List(v7,v8,v9), // row3 
		 List(v1,v4,v7), // col1 
		 List(v2,v5,v8), // col2 
		 List(v3,v6,v9), // col3 
		 List(v1,v5,v9), // diag1 
		 List(v3,v5,v7)  // diag2 
	)
	def print = {
		println("Board:")
		(0 to 2).foreach(i => println(board(i)))
	}

	def hasWinningRun(value: Value) = {
		board.exists(list => list.count(x => x == value) == 3)
	}

	def winner = {
		players.find(player => hasWinningRun(player)).toString
	}
}
	
// Construct a tic tac toe board 
val board = new Board(
	X,B,X,
	O,X,O,
	B,O,X
)

println("Welcome to Tic-Tac-Toe!")
board.print
println("And the winner is... " + board.winner)
