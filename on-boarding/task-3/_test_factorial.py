import unittest
from factorial import FactorialCalculator
class TestFactorialCalculator(unittest.TestCase):
    def test_factorial_of_0(self):
        self.assertEqual(FactorialCalculator.factorial(0), 1)

    def test_factorial_of_1(self):
        self.assertEqual(FactorialCalculator.factorial(1), 1)

    def test_factorial_of_5(self):
        self.assertEqual(FactorialCalculator.factorial(5), 120)

    def test_factorial_of_10(self):
        self.assertEqual(FactorialCalculator.factorial(10), 3628800)

if __name__ == '__main__':
    unittest.main()


