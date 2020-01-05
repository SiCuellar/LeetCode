import unittest
import algorithm

class TestAlgorithm(unittest.TestCase):
    def test_case_1(self):
        self.assertEqual(algorithm.twoNumberSum([4, 6], 10), [4, 6])

if __name__ == "__main__":
    unittest.main()
