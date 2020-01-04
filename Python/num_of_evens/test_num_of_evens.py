import unittest
from num_of_evens import Num_Even

class Num_Even_Test(unittest.TestCase):
    def test_it_exists(self):
        num_even = Num_Even()
        self.assertIsInstance(num_even, Num_Even())

if __name__ == '__main__':
    unittest.main()
