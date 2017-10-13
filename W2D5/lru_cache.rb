class LRUCache
    def initialize(size=5)
      @size=size 
      @storage = []
    end

    def count
      # returns number of elements currently in cache
      @storage.length 
    end

    def add(el)
      # adds element to cache according to LRU principle
      if @storage.include?(el)
        @storage.delete(el)
      elsif @storage.length==@size 
        @storage.shift
      end
      @storage << el 
    end

    def show
      # shows the items in the cache, with the LRU item first
      p @storage 
    end

    private
    # helper methods go here!

end