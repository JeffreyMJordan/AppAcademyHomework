class Stack
    def initialize(storage = [])
      @storage = storage
    end

    def add(el)
      @storage << el
    end

    def remove
      @storage.pop
    end

    def show
      Stack.new(@storage.dup)
    end
end

class Queue 
  def initialize(storage=[])
    @storage = []
  end

  def enqueue(el)
    @storage.unshift(el)
  end

  def dequeue
    @storage.shift
  end

  def show
    Queue.new(@storage.dup)
  end
end

class Map 
  def initialize(storage = [])
    @storage = storage
  end

  def assign(key, value)
    return nil if @storage.flatten.include?(key)
    @storage << [key, value]
  end

  def lookup(key)
    idx = @storage.flatten.index(key)
    @storage.flatten[idx+1]
  end

  def remove(key)
    @storage = @storage.select{|el| !el.include?(key)}
  end

  def show 
    Stack.new(@storage)
  end
end