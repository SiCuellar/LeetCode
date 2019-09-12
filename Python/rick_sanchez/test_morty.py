import unittest
from morty import Morty

class MortyTest(unittest.TestCase):
    def test_universe(self):
        morty = Morty(111)
        self.assertEqual(morty.universe, 111)

if __name__ == '__main__':
    unittest.main()
