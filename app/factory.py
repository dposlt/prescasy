import unittest
import config

class factory(unittest.TestCase):

    def test_host(self):

        self.assertEquals(config.parser.host(),'localhost')

    def test_db(self):

        self.assertEquals(config.parser.db(),'esprescasy')

    def test_user(self):

        self.assertEquals(config.parser.user(),'root')

    def test_pass(self):

        self.assertEquals(config.parser.userPass(),'postgres')

if __name__ == '__main__':
    unittest.main()

