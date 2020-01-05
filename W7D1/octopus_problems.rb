require 'byebug'

def sluggish_octopus(arr)
  longest = ""

  (0...arr.length - 1).each do |i|
    (i + 1...arr.length).each do |j|
      arr[i] < arr[j] ? longest = arr[i] : longest = arr[j]
    end
  end
  
  longest
end

def dominant(arr, &prc)
  prc ||= Proc.new { |a, b| a <=> b }
  return arr if arr.length <= 1

  mid = arr.length / 2
  left, right = arr[0...mid], arr[mid..-1]
  left_merge, right_merge = dominant(left, &prc), dominant(right, &prc)
  _dominant(left_merge, right_merge, &prc)
end

def _dominant(left, right, &prc)
  prc.call(left.length, right.length) == -1 ? left : right
end

def clever(array)
  longest = ''
  array.each { |ele| longest = ele if ele.length > longest.length }
  longest
end

def slow_dance(dir, tiles)
  tiles.each_with_index { |tile, i| return i if tile == dir }
end

def fast_dance(dir, tiles_hash)
  tiles_hash[dir]
end

long_fish = ['fish', 'fiiish', 'fiiiiish', 
  'fiiiish', 'fffish', 'ffiiiiisshh', 
  'fsh', 'fiiiissshhhhhh'
]

tiles_array = ["up", "right-up", "right", "right-down", "down",
 "left-down", "left",  "left-up" 
]
 
tiles_hash = { "up" => 0, "right-up" => 1, "right" => 2, "right-down" => 3,
  "down" => 4, "left-down" => 5, "left" => 6,  "left-up" => 7
}

p fast_dance("right-down", tiles_hash)
p fast_dance("up", tiles_hash)