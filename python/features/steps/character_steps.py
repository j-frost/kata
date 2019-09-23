from behave import given, when, then, step

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

