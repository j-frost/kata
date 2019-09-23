Feature: Character

  @wip
  Scenario: Character creation
    Given nothing
    When we create a character
    Then character has health 1000
    And character has level 1
    And character is alive

  Scenario: Characters fight
    Given an attacker
    And a receiver
    When attacker deals damage to receiver
    Then receiver health minus attacker damage
    When receiver health <= 0
    Then receiver alive is false

  Scenario: Character can heal
    Given a healer
    And a receiver
    And receiver alive is true
    When healer heals receiver
    Then receiver health increases
    And receiver health <= 1000
