# you can write to stdout for debugging purposes, e.g.
# print("this is a debug message")

def solution(N):
    binary = bin(N)
    counter = 0
    gap = 0
    for digit in binary[2:]:
        if digit == "0":
            counter += 1
        else:
            gap = max(gap, counter)
            counter = 0
    return gap
