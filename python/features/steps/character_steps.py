from behave import given, when, then

from kata.character import Character


@given('nothing')
def step_impl(context):
    pass


@when('we create a character')
def step_impl(context):
    context.character = Character()


@then('character has health {health:d}')
def step_impl(context, health):
    assert context.character.health == health


@then('character has level {level:d}')
def step_impl(context, level):
    assert context.character.level == level


@then('character is alive')
def step_impl(context):
    assert context.character.is_alive()


@given('an attacker')
def step_impl(context):
    context.attacker = Character()


@given('a receiver')
def step_impl(context):
    context.receiver = Character()


@when('attacker damages receiver')
def step_impl(context):
    context.attacker.attack(context.receiver)


@then('receiver health is {health:d}')
def step_impl(context, health):
    assert context.receiver.health == health


@given('attacker has damage of {damage:d}')
def step_impl(context, damage):
    context.attacker.damage = damage


@given('receiver has health of {health:d}')
def step_impl(context, health):
    context.receiver.health = health


@then('receiver is not alive')
def step_impl(context):
    assert not context.character.is_alive()
