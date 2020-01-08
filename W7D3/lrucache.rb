require 'byebug'

class LRUCache
  attr_reader :max_size
  attr_accessor :cache
  def initialize(size)
    @cache = {}
    @max_size = size + 2
    make_head_tail
  end

  def make_head_tail
    @cache['head'] = LinkList.new('head', nil, nil)
    @cache['tail'] = LinkList.new('tail', nil, nil)
    @cache['head'].prev, @cache['tail'].nex = @cache['tail'], @cache['head']
  end 

  def count
    # returns number of elements currently in cache
    cache.length
  end

  def add(el)
    # adds element to cache according to LRU principle
    self.delete if max_size == self.count - 1
    head = @cache['head']
    # debugger
    if @cache[el] == true
      @cache[el].nex = head
      @cache[el].prev = head.prev
    else
      @cache[el] = LinkList.new(el, head.prev, head)
    end
    head.prev.nex = @cache[el]
    head.prev = @cache[el]
  end

  def delete
    node = @cache['tail'].nex
    node.prev.nex = node.nex
    node.nex.prev = node.prev
    @cache.delete(node.val)
  end

  def show
    # shows the items in the cache, with the LRU item first
    p cache
  end

  private
  # helper methods go here!
  end


  class LinkList
    attr_accessor :val, :prev, :nex
    def initialize(val, prev, nex)
      @val = val
      @prev = prev
      @nex = nex
    end

    def inspect
      self.val
    end
  end

  johnny_cache = LRUCache.new(4)

  johnny_cache.add("I walk the line")
  johnny_cache.add(5)

  johnny_cache.count # => returns 2

  johnny_cache.add([1,2,3])
  johnny_cache.add(5)
  johnny_cache.add(-5)
  johnny_cache.add({a: 1, b: 2, c: 3})
  johnny_cache.add([1,2,3,4])
  johnny_cache.add("I walk the line")
  johnny_cache.add(:ring_of_fire)
  johnny_cache.add("I walk the line")
  johnny_cache.add({a: 1, b: 2, c: 3})


  johnny_cache.show # => prints [[1, 2, 3, 4], :ring_of_fire, "I walk the line", {:a=>1, :b=>2, :c=>3}]

  p johnny_cache.cache['tail'].nex