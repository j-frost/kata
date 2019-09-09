# frozen_string_literal: true

RSpec.describe String do
  it 'has a #calc_sum method' do
    expect { subject.method(:calc_sum) }.not_to raise_error
  end

  context 'with a value of "0"' do
    subject { '0' }
    it 'sums up to be the number 0' do
      expect(subject.calc_sum).to eq 0
    end
  end

  context 'with a value of "1"' do
    subject { '1' }
    it 'sums up to be the number 1' do
      expect(subject.calc_sum).to eq 1
    end
  end

  context 'with a value of "-1"' do
    subject { '-1' }
    it 'sums up to be the number -1' do
      expect(subject.calc_sum).to eq(- 1)
    end
  end

  context 'with a value of "42"' do
    subject { '42' }
    it 'sums up to be the number 42' do
      expect(subject.calc_sum).to eq 42
    end
  end

  context 'with a value of "2**128"' do
    subject { (2**128).to_s }
    it 'sums up to be the number 2**128' do
      expect(subject.calc_sum).to eq 2**128
    end
  end

  context 'with a value of "-2**128"' do
    subject { (-2**128).to_s }
    it 'sums up to be the number -2**128' do
      expect(subject.calc_sum).to eq(- 2**128)
    end
  end

  context 'with a value of "0,0"' do
    subject { '0,0' }
    it 'sums up to be the number 0' do
      expect(subject.calc_sum).to eq 0
    end
  end

  context 'with a value of "0,1"' do
    subject { '0,1' }
    it 'sums up to be the number 1' do
      expect(subject.calc_sum).to eq 1
    end
  end

  context 'with a value of "1,0"' do
    subject { '1,0' }
    it 'sums up to be the number 1' do
      expect(subject.calc_sum).to eq 1
    end
  end

  context 'with a value of "0,-1"' do
    subject { '0,-1' }
    it 'sums up to be the number -1' do
      expect(subject.calc_sum).to eq(- 1)
    end
  end

  context 'with a value of "-1,0"' do
    subject { '-1,0' }
    it 'sums up to be the number -1' do
      expect(subject.calc_sum).to eq(- 1)
    end
  end

  context 'with a value of "1,-1"' do
    subject { '1,-1' }
    it 'sums up to be the number 0' do
      expect(subject.calc_sum).to eq 0
    end
  end

  context 'with a value of "-1,1"' do
    subject { '-1,1' }
    it 'sums up to be the number 0' do
      expect(subject.calc_sum).to eq 0
    end
  end

  context 'with a value of "42,23"' do
    subject { '42,23' }
    it 'sums up to be the number 65' do
      expect(subject.calc_sum).to eq 65
    end
  end

  context 'with a value of "2**128,-2**128"' do
    subject { "#{2**128},#{- 2**128}" }
    it 'sums up to be the number 0' do
      expect(subject.calc_sum).to eq 0
    end
  end

  context 'with a value of "1,2,3"' do
    subject { '1,2,3' }
    it 'sums up to be the number 6' do
      expect(subject.calc_sum).to eq 6
    end
  end
end
