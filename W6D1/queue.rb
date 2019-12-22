
class Queue

  attr_accessor :queue_var

  def initialize
    @queue_var = []
  end

  def enqueue(el)
    self.queue_var << el
  end

  def dequeue
    self.queue_var.unshift
  end

  def peek
    self.first
  end

end