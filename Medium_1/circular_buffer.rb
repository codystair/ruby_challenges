class CircularBuffer
  def initialize(size)
    @buffer = []
    @size = size
  end

  def read
    raise BufferEmptyException if @buffer.empty?
    @buffer.shift
  end

  def write(item)
    raise BufferFullException if full?
    @buffer << item if item
  end

  def write!(item)
    if full? && item
      @buffer.shift
      write(item)
    elsif item
      write(item)
    end
  end

  def full?
    @buffer.size == @size
  end

  def clear
    @buffer = []
  end

  class BufferEmptyException < RuntimeError; end

  class BufferFullException < RuntimeError; end
end
