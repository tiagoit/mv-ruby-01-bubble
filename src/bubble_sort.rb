#!/usr/bin/env ruby
# frozen_string_literal: true

def bubble_sort(array)
  array_ = array # method should not be destructive
  array_.length.times do |j|
    (array_.length - j).times do |i| # loop till the not ordered element, on first run, last element is already ordered
      if array_[i + 1] &&
         array_[i] > array_[i + 1] # if there is a next element AND the actual is greater than the next
        array_[i], array_[i + 1] = array_[i + 1], array_[i] # swap elements
      end
    end
  end

  array_
end

puts bubble_sort [3, 2, 1] # 2, 1, 3
puts bubble_sort [3, 4, 2, 1] # 3, 2, 1, 4
puts bubble_sort [4, 3, 5, 2, 1] # 3, 2, 1, 4
