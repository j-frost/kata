from __future__ import annotations


class Character(object):

    def __init__(self):
        self.health = 1000
        self.level = 1

    def is_alive(self) -> bool:
        return True

    def attack(self, receiver: Character) -> None:
        pass
