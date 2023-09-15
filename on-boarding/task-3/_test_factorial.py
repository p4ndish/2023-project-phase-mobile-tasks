import unittest
from factorial import FactorialCalculator

class TestFactorialCalculator(unittest.TestCase):
    def setUp(self):
        self.calculator = FactorialCalculator()

    def test_factorial_of_0(self):
        self.assertEqual(self.calculator.factorial(0), 1)

    def test_factorial_of_1(self):
        self.assertEqual(self.calculator.factorial(1), 1)

    def test_factorial_of_5(self):
        self.assertEqual(self.calculator.factorial(5), 120)

    def test_factorial_of_10(self):
        self.assertEqual(self.calculator.factorial(10), 3628800)

    def test_factorial_of_negative_number(self):
        with self.assertRaises(ValueError):
            self.calculator.factorial(-1)

if __name__ == '__main__':
    unittest.main()
