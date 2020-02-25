Feature: Character

  Scenario: Character creation
    Given nothing
    When we create a character
    Then character has health 1000
    And character has level 1
    And character is alive

  Scenario: Characters can attack each other
    Given an attacker
    And attacker has damage of 4
    And a receiver
    And receiver has health of 973
    When attacker damages receiver
    Then receiver health is 969

  Scenario: Character dies when attacked fatally
    Given an attacker
    And attacker has damage of 4
    And a receiver
    And receiver has health of 3
    When attacker damages receiver
    Then receiver is not alive
    And receiver health is 0

  Scenario: Character can heal
    Given a healer
    And a receiver
    And receiver alive is true
    When healer heals receiver
    Then receiver health increases
    And receiver health <= 1000
