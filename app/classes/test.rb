# frozen_string_literal: true

# test
class Test
  attr_accessor :calendar

  def initialize
    arrival = [1, 1, 1, 1, 4]
    duration = [10, 3, 6, 4, 2]
    maxEvents(arrival, duration)
  end

  def maxEvents(arrival, duration)
    puts arrival.join(',')
    puts duration.join(',')
    return false unless valid_constraints?(arrival, duration)

    calendar = Calendar.new
    (0..(arrival.length - 1)).each do |i|
      block = Block.new(arrival, duration, i)
      calendar.add_block(block)
    end
    puts calendar.total
  end


  def valid_constraints?(arrival, duration)
    # validdate N
    return false unless arrival.length.positive?
    #
    #     # validate size both arrays
    return false unless arrival.length == duration.length
    #
    #         # validate values arrrival
    return false unless arrival.min.positive? && arrival.max <= 1000
    #
    #             # validate values arrrival
    return false unless duration.min.positive? && duration.max <= 1000

    true
  end

  # class to handle the block unit
end
