import unittest

from character import Character


class TestCharacter(unittest.TestCase):

    def test_character_is_class(self):
        self.assertTrue(issubclass(Character, object))
