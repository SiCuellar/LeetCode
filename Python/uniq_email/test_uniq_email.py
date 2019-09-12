import unittest
import uniq_email

class TestUniqEmail(unittest.TestCase):

    # def test_it_exists(self):
    #     emails = ["test.email+alex@leetcode.com","test.e.mail+bob.cathy@leetcode.com","testemail+david@lee.tcode.com"]
    #     uniq_email = UniqEmail(emails)
    #     self.assertIsInstance(uniq_email, UniqEmail())

    def test_case_1(self):
        emails = ["test.email+alex@leetcode.com","test.e.mail+bob.cathy@leetcode.com","testemail+david@lee.tcode.com"]
        self.assertIsInstance(uniq_email.numUniqEmails(emails))



if __name__ == '__main__':
    unittest.main()
