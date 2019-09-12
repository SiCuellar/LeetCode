import unittest
from rick import Rick
from morty import Morty

class RickTests(unittest.TestCase):
    def test_universe(self):
        rick = Rick(111)
        self.assertEqual(rick.universe, 111)

    def test_it_has_morty(self):
        rick = Rick(111)
        self.assertEqual(rick.morty, None)

    def test_it_can_assing_morty(self):
        rick = Rick(111)
        morty = Morty(111)

        rick.assign(morty)

        self.assertEqual(rick.morty, morty)
        self.assertTrue(morty.is_assigned)

    def test_it_becomes_pickle(self):
        rick = Rick(111)
        self.assertFalse(rick.is_pickle)



if __name__ == '__main__':
    unittest.main()
