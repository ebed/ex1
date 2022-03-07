
  class Block
    attr_accessor :starts, :ends, :company, :duration

    def initialize(starts, duration, company)
      @starts = starts[company]
      @ends = @starts + duration[company] - 1
      @duration = duration[company]
      @company = company
    end

    def generate_range_loop
      (@starts..@ends)
    end

    def generate_key
      @starts
    end
  end
