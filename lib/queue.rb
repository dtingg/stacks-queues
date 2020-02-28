class Queue
  def initialize
    @store = Array.new(25)

    @front = -1
    @back = -1
  end

  def enqueue(element)
    # Queue is empty
    if @front == -1
      @front = 0
      @back = 0
    # Queue is full
    elsif @front == @back
      pass
    end

    @store[@back] = element
    @back = (@back + 1) % @store.length
  end

  def dequeue
    data = @store[@front]
    @front = (@front + 1) % @store.length

    if @front == @back
      @front = -1
      @back = -1
    end
    
    return data
  end

  def front
    raise NotImplementedError, "Not yet implemented"
  end

  def size
    raise NotImplementedError, "Not yet implemented"
  end

  def empty?
    return @front == -1
  end

  def to_s
    return @store[@front...@back].to_s
  end
end
