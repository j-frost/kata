import unittest

from kata.character import Character


class TestCharacter(unittest.TestCase):

    def test_character_is_class(self):
        self.assertTrue(issubclass(Character, object))

    def test_character_has_health(self):
        character = Character()
        self.assertTrue(hasattr(character, 'health'), 'character must have attribute "health"')

    def test_new_character_has_starting_health(self):
        character = Character()
        self.assertTrue(character.health == 1000)

    def test_character_has_level(self):
        character = Character()
        self.assertTrue(hasattr(character, 'level'), 'character must have attribute "level"')

    def test_new_character_has_starting_level(self):
        character = Character()
        self.assertTrue(type(character.level) == int, 'character level must be an integer')
        self.assertEqual(character.level, 1)

    def test_character_has_function_is_alive(self):
        character = Character()
        self.assertTrue(hasattr(character, 'is_alive'), 'character must have attribute "is_alive"')
        self.assertTrue(callable(character.is_alive), 'character "is_alive" attribute must be callable')

    def test_new_character_is_alive(self):
        character = Character()
        self.assertTrue(character.is_alive())

    def test_character_has_function_attack(self):
        character = Character()
        self.assertTrue(hasattr(character, 'attack'), 'character must have attribute "attack"')
        self.assertTrue(callable(character.attack), 'character "attack" attribute must be callable')

    def test_character_can_attack_another_character(self):
        attacker = Character()
        receiver = Character()
        attacker.attack(receiver)
