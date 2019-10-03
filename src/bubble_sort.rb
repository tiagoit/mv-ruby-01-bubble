#!/usr/bin/env ruby
# frozen_string_literal: true

def bubble_sort(array)
  array_ = array # method should not be destructive
  array_.length.times do |j|
    (array_.length - j).times do |i| # loop till the not ordered element, on first run, last element is already ordered
      yield array, i
    end
  end

  array_
end

def bubble_sort_by(array)
  bubble_sort(array) do |array_, i|
    if array[i + 1] then
      order = yield(array[i], array[i+1])
      # puts order
      array_[i], array_[i + 1] = array_[i + 1], array_[i] if order.positive? # swap elements
    end
  end
end

newarr = bubble_sort_by %w[hi hello hey] do |left, right|
  left.length - right.length
end

puts newarr

# puts bubble_sort [3, 2, 1] # 2, 1, 3
# puts bubble_sort [3, 4, 2, 1] # 3, 2, 1, 4
# puts bubble_sort [4, 3, 5, 2, 1] # 3, 2, 1, 4
