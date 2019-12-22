require "byebug"

class Map

  attr_accessor :map_var

  def initialize
    @map_var = []
  end

  def set(key, value)
    # set method 1
    self.map_var.each_with_index do |pair, i|
      map_key, map_value = pair
      if map_key == key
        debugger
        self.map_var[i][1] = value
        return self.map_var
      end
    end
    self.map_var << [key, value]
  end

  def get(key)
    self.map_var.each do |pair|
      map_key, _ = pair
      return pair if map_key == key
    end
  end

  def delete(key)
    self.map_var.each do |pair|
      map_key, _ = pair
      if map_key == key
        self.map_var.delete(pair)
        return self.map_var
      end
    end
  end

  def show
    self.map_var
  end

end