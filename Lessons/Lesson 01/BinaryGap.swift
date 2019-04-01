import Foundation
import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ N : Int) -> Int {
    let binary = String(N, radix: 2)
    var counter = 0
    var gap = 0
    for digit in binary {
        if digit == "0" {
            counter += 1
        } else {
            gap = max(gap, counter)
            counter = 0
        }
    }
    return gap
}
