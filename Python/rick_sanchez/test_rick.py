import unittest
from rick import Rick

class RickTests(unittest.TestCase):
    def test_universe(self):
        rick = Rick(111)
        self.assertEqual(rick.universe, 111)


if __name__ == '__main__':
    unittest.main()
