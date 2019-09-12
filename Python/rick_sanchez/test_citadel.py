import unittest
from citadel import Citadel
from rick import Rick
from morty import Morty

class TestCitadel(unittest.TestCase):
    def test_it_gets_all_residents(self):
        citadel = Citadel()
        residents = citadel.get_all_residents()
        self.assertEqual(residents, [])

    def test_it_can_ad_residents(self):
        citadel = Citadel()
        rick = Rick(111)
        morty = Morty(111)

        citadel.add_resident(rick)
        citadel.add_resident(morty)
        residents = citadel.get_all_residents()

        self.assertEqual(residents[0], rick)
        self.assertEqual(residents[1], morty)



if __name__ == '__main__':
    unittest.main()
