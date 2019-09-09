# frozen_string_literal: true

String.class_eval do
  def calc_sum
    to_i unless include? ','
    split(',').map(&:to_i).reduce :+
  end
end
