import unittest

from kata.leap_year import is_leap_year


class TestIsLeapYear(unittest.TestCase):

    def test_is_leap_year_is_a_function(self):
        self.assertTrue(callable(is_leap_year))

    def test_400_should_return_true(self):
        self.assertTrue(is_leap_year(400))

    def test_800_should_return_true(self):
        self.assertTrue(is_leap_year(800))

    def test_1_should_return_false(self):
        self.assertFalse(is_leap_year(1))

    def test_500_should_return_false(self):
        self.assertFalse(is_leap_year(2500))

    def test_4_should_return_true(self):
        self.assertTrue(is_leap_year(4))

    def test_600_should_return_false(self):
        self.assertFalse(is_leap_year(2600))

    def test_1700_should_return_false(self):
        self.assertFalse(is_leap_year(1700))

    def test_1800_should_return_false(self):
        self.assertFalse(is_leap_year(1800))

    def test_1900_should_return_false(self):
        self.assertFalse(is_leap_year(1900))

    def test_2100_should_return_false(self):
        self.assertFalse(is_leap_year(2100))

    def test_2008_should_return_true(self):
        self.assertTrue(is_leap_year(2008))

    def test_2012_should_return_true(self):
        self.assertTrue(is_leap_year(2012))

    def test_2016_should_return_true(self):
        self.assertTrue(is_leap_year(2016))

    def test_2017_should_return_false(self):
        self.assertFalse(is_leap_year(2017))

    def test_2018_should_return_false(self):
        self.assertFalse(is_leap_year(2018))

    def test_2019_should_return_false(self):
        self.assertFalse(is_leap_year(2019))


if __name__ == '__main__':
    unittest.main()
