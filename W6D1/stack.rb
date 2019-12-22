class Stack

  attr_accessor :stack_var

  def initialize
    self.stack_var = []
  end

  def push(el)
    self.stack_var << el
  end

  def pop
    self.stack_var.pop
  end

  def peek
    self.stack_var.last
  end

end