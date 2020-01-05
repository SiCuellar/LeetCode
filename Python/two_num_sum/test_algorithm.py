import unittest
import algorithm

class TestAlgorithm(unittest.TestCase):
    def test_case_1(self):
        self.assertEqual(algorithm.twoNumberSum([4, 6], 10), [4, 6])

    def test_case_2(self):
        self.assertEqual(algorithm.twoNumberSum([1, 2, 3, 4, 5, 6, 7, 8, 9], 17), [8, 9])

if __name__ == "__main__":
    unittest.main()
