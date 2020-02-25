import unittest

from kata.character import Character


class TestCharacter(unittest.TestCase):

    def test_character_is_class(self):
        self.assertTrue(issubclass(Character, object))

    def test_character_has_health(self):
        character = Character()
        self.assertTrue(getattr(character, 'health'))

    def test_new_character_has_starting_health(self):
        character = Character()
        self.assertTrue(character.health == 1000)

    def test_character_has_level(self):
        character = Character()
        self.assertTrue(getattr(character, 'level'))

    def test_new_character_has_starting_level(self):
        character = Character()
        self.assertTrue(type(character.level) == int)
        self.assertEqual(character.level, 1)
