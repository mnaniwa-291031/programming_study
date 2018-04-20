#!/usr/bin/env python3.6

# for doctest
# /usr/bin/env python3.6 -m doctest -v p_e_0002.py

def fibonacci(num):
    '''
    >>> fibonacci(100)
    [1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
    '''
    a, b, res = 1, 2, []
    while (a < num):
        res.append(a)
        a, b = b, (a + b)
    return res

def sum_even(n):
    return sum([x for x in fibonacci(n) if (x % 2 == 0)])

if __name__ == '__main__':
    print(sum_even(100))
    print(sum_even(4_000_000))

