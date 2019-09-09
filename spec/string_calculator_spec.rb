# frozen_string_literal: true

SAMPLE_NUMBERS = [0, 1, -1, 42, 2**128, -2**128].freeze
IDEMPOTENT_HASH = SAMPLE_NUMBERS.map { |n| [n.to_s, n] }.to_h.freeze
ADD_EXPECTATION_MAP = IDEMPOTENT_HASH

RSpec.describe Kata::StringCalculator do
  subject(:calc) { Kata::StringCalculator.new }
  it { is_expected.not_to be_nil }

  describe '#string' do
    subject { calc.string }
    it { is_expected.to eq '' }
  end

  context 'when given the empty string' do
    subject(:calc) { Kata::StringCalculator.new '' }

    describe '#string' do
      subject { calc.string }
      it { is_expected.to eq '' }
    end

    describe '#add' do
      subject { calc.add }
      it { is_expected.to eq 0 }
    end
  end

  ADD_EXPECTATION_MAP.each do |given_input, expected_output|
    context "when given #{given_input} as input" do
      subject(:calc) { Kata::StringCalculator.new given_input }

      describe '#add' do
        subject { calc.add }
        it { is_expected.to eq expected_output }
      end
    end
  end
end
