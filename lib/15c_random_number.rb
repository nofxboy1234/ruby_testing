# frozen_string_literal: true

require 'pry-byebug'

# class to generate random number
class RandomNumber
  attr_reader :value

  def initialize(minimum, maximum)
    binding.pry
    @value = rand(minimum..maximum)
  end

  def update_value(number)
    @value = number
  end
end
