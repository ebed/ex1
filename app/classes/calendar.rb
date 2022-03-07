# class for calendar
class Calendar
  attr_accessor :blocks, :used_hours, :waiting

  def initialize
    @blocks = {}
    @used_hours = []
    @arrive = []
  end

  def add_block(block)
    (block.starts..block.ends).each do |i|
      puts @used_hours.join
      return false unless @used_hours[i].blank?
    end
    clean_block(block)
    blocks[block.starts] = block unless @blocks[block.starts].present? && block.duration > @blocks[block.starts].duration
    reserve_block(block)
  end

  def clean_block(block)
    puts "cleaning #{block.company} #{block.starts} #{block.duration}"
    puts @used_hours.join
    puts "---"
    return unless @blocks[block.starts].present?

    puts @blocks[block.starts].generate_range_loop
    @blocks[block.starts].generate_range_loop.each do |i|
      @used_hours[i] = nil
    end
  end

  def reserve_block(block)
    puts "reservving #{block.company} #{block.starts} #{block.duration}"
    puts @used_hours.join
    puts "---"
    return unless @blocks[block.starts] 

    @blocks[block.starts].generate_range_loop.each do |i|
      puts "i #{i} company #{block.company}"
      @used_hours[i] = block.company
    end
  end

  def total
    @blocks.count
  end
end
