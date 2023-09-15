class FactorialCalculator:
    def __init__(self):
        self.memo = {}

    def factorial(self, n):
        if n < 0:
            raise ValueError("Factorial is not defined for negative numbers.")
        if n in self.memo:
            return self.memo[n]

        if n == 0:
            result = 1
        else:
            result = n * self.factorial(n - 1)

        self.memo[n] = result
        return result