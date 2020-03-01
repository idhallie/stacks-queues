class Queue
  
  def initialize
    @store = Array.new(10)
    @front = -1
    @back = -1
  end
  
  def enqueue(element)
    if @front == -1 && @back == -1
      front = 0
      back = 1
    end
    
    if @front == @back
      return
    end
    
    @store[@back] = element
    @back = (@back + 1) % @store.length
  end
  
  def dequeue
    raise NotImplementedError, "Not yet implemented"
  end
  
  def front
    raise NotImplementedError, "Not yet implemented"
  end
  
  def size
    raise NotImplementedError, "Not yet implemented"
  end
  
  def empty?
    raise NotImplementedError, "Not yet implemented"
  end
  
  def to_s
    values = []
    
    @store.each do |i|
      if !i.nil?
        values << i
      end
    end
    
    return values.to_s
  end
end
