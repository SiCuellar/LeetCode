import unittest
import uniq_email

class UniqEmailTest(unittest.TestCase):
    def test_it_exists(self):
        emails = ["test.email+alex@leetcode.com","test.e.mail+bob.cathy@leetcode.com","testemail+david@lee.tcode.com"]
        uniq_email = UniqEmail(emails)
        self.assertIsInstance(uniq_email, UniqEmail())

if __name__ == '__main__':
    unittest.main()
