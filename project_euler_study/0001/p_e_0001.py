#!/usr/bin/env python3

def sum_multi_3or5(z):
    return sum([x for x in range(z) if (x % 3 == 0) or (x % 5 == 0)])

print(sum_multi_3or5(10))

print(sum_multi_3or5(1000))

