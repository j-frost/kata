# frozen_string_literal: true

# Defines the StringCalculator class inside the Kata module.
module Kata
  # A StringCalculator will accept a comma separated list of numbers as a single
  # string. Calling any of its methods will apply the given operation on the
  # list.
  class StringCalculator
    attr_reader :string

    def initialize(source_string = '')
      @string = source_string
    end

    def add
      @string.to_i
    end
  end
end
