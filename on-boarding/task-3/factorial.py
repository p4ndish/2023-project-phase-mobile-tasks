class FactorialCalculator:
    def __init__(self):
        self.memo = {0: 1}
    @staticmethod
    def factorial(n):
        if n < 0:
            raise ValueError("Factorial is not defined for negative numbers.")

        if n not in FactorialCalculator.memo:
            FactorialCalculator.memo[n] = n * FactorialCalculator.factorial(n - 1)

        return FactorialCalculator.memo[n]
