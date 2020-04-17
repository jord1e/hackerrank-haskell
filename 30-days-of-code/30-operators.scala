import scala.io.StdIn.{readDouble, readInt}

object Solution extends App {
  val (price, tip, tax) = (readDouble(), readInt(), readInt())
  val total = price * (1d + tip / 100d + tax / 100d)
  println(total.round)
}