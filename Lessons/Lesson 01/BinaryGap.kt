// you can also use imports, for example:
// import kotlin.math.*

// you can write to stdout for debugging purposes, e.g.
// println("this is a debug message")

fun solution(N: Int): Int {
    val binary = N.toString(radix = 2)
    var counter = 0
    var gap = 0
    for (digit in binary) {
        if (digit == '0') counter++ else {
            if (counter > gap) gap = counter
            counter = 0
        }
    }
    return gap
}
