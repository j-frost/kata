# frozen_string_literal: true

MY_INPUT_ONE = %(123835
66973
63652
99256
56009
58012
130669
109933
52958
131656
144786
50437
134194
80230
50326
118204
102780
135520
142248
80341
51071
71346
134081
142321
136230
55934
79697
90116
107825
133052
130259
99566
83066
90923
58475
134697
91830
105838
109003
125258
108679
87310
79813
109814
65616
69275
118405
105178
93140
79535
138051
55728
71875
121207
52011
81209
129059
135782
62791
72135
77765
109498
73862
134825
148898
81633
53277
109858
91672
115105
132871
138334
135049
73083
79234
129281
86062
88448
99612
52138
149290
120562
118975
92896
51162
122410
75479
137800
142149
123518
67806
89937
85963
104764
56710
51314
67275
61135
77580
74726)

MY_INPUT_TWO = %(1,0,0,3,1,1,2,3,1,3,4,3,1,5,0,3,2,6,1,19,2,19,9,23,1,23,5,27,2,6,27,31,1,31,5,35,1,35,5,39,2,39,6,
43,2,43,10,47,1,47,6,51,1,51,6,55,2,55,6,59,1,10,59,63,1,5,63,67,2,10,67,71,1,6,71,75,1,5,75,79,1,10,79,83,2,83,10,87,1,87,9,91,1,91,10,95,2,6,95,99,1,5,99,103,1,103,13,107,1,107,10,111,2,9,111,115,1,115,6,119,2,13,119,123,1,123,6,127,1,5,127,131,2,6,131,135,2,6,135,139,1,139,5,143,1,143,10,147,1,147,2,151,1,151,13,0,99,2,0,14,0)

RSpec.describe AdventOfCode do

  describe 'day 1, first puzzle (Fuel Counter-Upper)' do
    it 'should return 2 for an input of 12' do
      expect(AdventOfCode.fuel_counter_upper(12)).to be(2)
    end
    it 'should return 2 for an input of 14' do
      expect(AdventOfCode.fuel_counter_upper(14)).to be(2)
    end
    it 'should return 654 for an input of 1969' do
      expect(AdventOfCode.fuel_counter_upper(1969)).to be(654)
    end
    it 'should return 33583 for an input of 100756' do
      expect(AdventOfCode.fuel_counter_upper(100756)).to be(33583)
    end
    it 'result' do
      s = MY_INPUT_ONE.each_line.map { |w| AdventOfCode.fuel_counter_upper w.to_i }.sum
      expect(s).to be 3226822
    end
  end

  describe 'day 1, second puzzle (Rocket Equation Double-Checker)' do
    it 'should return 966 for an input of 1969' do
      expect(AdventOfCode.rocket_equation_double_checker(1969)).to be(966)
    end
    it 'should return 50346 for an input of 100756' do
      expect(AdventOfCode.rocket_equation_double_checker(100756)).to be(50346)
    end
    it 'result' do
      s = MY_INPUT_ONE.each_line.map { |w| AdventOfCode.rocket_equation_double_checker w.to_i }.sum
      expect(s).to be 4837367
    end
  end

  describe 'day 2, first puzzle (implementing an Intcode interpreter)' do
    describe '#opcode_one' do
      it 'should modify to 1,1,1,2 for an input of 1,1,1,3' do
        subject = AdventOfCode::Intcode.new('1,1,1,3')
        subject.opcode_one!
        expect(subject.to_s).to eq('1,1,1,2')
      end
      it 'should modify to 1,0,0,2 for an input of 1,0,0,3' do
        subject = AdventOfCode::Intcode.new('1,0,0,3')
        subject.opcode_one!
        expect(subject.to_s).to eq('1,0,0,2')
      end
    end
    describe '#opcode_two' do
      it 'should modify to 2,0,0,4 for an input of 2,0,0,3' do
        subject = AdventOfCode::Intcode.new('2,0,0,3')
        subject.opcode_two!
        expect(subject.to_s).to eq('2,0,0,4')
      end
    end
    describe '#run' do
      it 'should call opcode_one if 1 is at the current position' do
        subject = AdventOfCode::Intcode.new('1,0,0,0,99')
        expect(subject).to receive(:opcode_one!)
        subject.run!
      end
    end
    it 'should return 3500,9,10,70,2,3,11,0,99,30,40,50 for an input of 1,9,10,3,2,3,11,0,99,30,40,50' do
      subject = AdventOfCode::Intcode.new('1,9,10,3,2,3,11,0,99,30,40,50')
      subject.run!
      expect(subject.to_s).to eq('3500,9,10,70,2,3,11,0,99,30,40,50')
    end
    it 'should return 2,0,0,0,99 for an input of 1,0,0,0,99' do
      subject = AdventOfCode::Intcode.new('1,0,0,0,99')
      subject.run!
      expect(subject.to_s).to eq('2,0,0,0,99')
    end
    it 'should return 2,3,0,6,99 for an input of 2,3,0,3,99' do
      subject = AdventOfCode::Intcode.new('2,3,0,3,99')
      subject.run!
      expect(subject.to_s).to eq('2,3,0,6,99')
    end
    it 'should return 2,4,4,5,99,9801 for an input of 2,4,4,5,99,0' do
      subject = AdventOfCode::Intcode.new('2,4,4,5,99,0')
      subject.run!
      expect(subject.to_s).to eq('2,4,4,5,99,9801')
    end
    it 'should return 30,1,1,4,2,5,6,0,99 for an input of 1,1,1,4,99,5,6,0,99' do
      subject = AdventOfCode::Intcode.new('1,1,1,4,99,5,6,0,99')
      subject.run!
      expect(subject.to_s).to eq('30,1,1,4,2,5,6,0,99')
    end
    it 'result' do
      input = MY_INPUT_TWO
      input = input.split(',')
      input[1] = '12'
      input[2] = '2'
      input = input.join(',')
      subject = AdventOfCode::Intcode.new input
      subject.run!
      expect(subject.to_s).to eq('4576384,12,2,2,1,1,2,3,1,3,4,3,1,5,0,3,2,6,1,24,2,19,9,72,1,23,5,73,2,6,27,146,1,31,5,147,1,35,5,148,2,39,6,296,2,43,10,1184,1,47,6,1186,1,51,6,1188,2,55,6,2376,1,10,59,2380,1,5,63,2381,2,10,67,9524,1,6,71,9526,1,5,75,9527,1,10,79,9531,2,83,10,38124,1,87,9,38127,1,91,10,38131,2,6,95,76262,1,5,99,76263,1,103,13,76268,1,107,10,76272,2,9,111,228816,1,115,6,228818,2,13,119,1144090,1,123,6,1144092,1,5,127,1144093,2,6,131,2288186,2,6,135,4576372,1,139,5,4576373,1,143,10,4576377,1,147,2,4576379,1,151,13,0,99,2,0,14,0')
    end
  end

  describe 'day 2, second puzzle (finding noun and verb for 19690720' do
    it 'brute force' do
      noun = 0
      verb = 0
      catch :done do
        (0..99).each do |n|
          (0..99).each do |v|
            input = MY_INPUT_TWO
            input = input.split(',')
            input[1] = n.to_s
            input[2] = v.to_s
            input = input.join(',')
            subject = AdventOfCode::Intcode.new input
            subject.run!
            if subject.to_s.split(',')[0] == '19690720'
              noun = n
              verb = v
              throw :done
            end
          end
        end
      end
      expect([noun, verb]).to eq([53, 98])
    end
  end
end
