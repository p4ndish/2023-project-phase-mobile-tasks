

class FactorialCalculator:

    def factorial(n):
        if n == 0:
            return 1
        else:
            return n * FactorialCalculator.factorial(n-1)
