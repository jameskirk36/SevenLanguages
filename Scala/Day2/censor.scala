// Write a Censor trait with a method that will replace the curse words Shoot and Darn with Pucky and Beans alternatives. Use a map to store the curse words and their alternatives.

trait Censor {
	val alternatives = Map( "Shoot" -> "Pucky", "Darn" -> "Beans" )

	def replaceCurseWords(s: String): String = {
		def recursiveReplace(input: String, map: Map[String, String]): String = {
			if (map.isEmpty)
				input
			else 
				recursiveReplace(input.replace(map.head._1, map.head._2), map.tail)	
		}
		recursiveReplace(s, alternatives)
	} 
}

object Censorer extends Censor
println(Censorer.replaceCurseWords(" Why don't you Shoot me you Darn idiot!"))
