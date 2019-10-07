# /home/eduardo/.rvm/rubies/ruby-2.6.3/bin/ruby
# frozen_string_literal: true

def bubble_sort(array)
  array_ = array # method should not be destructive
  array_.size.times do |i|
    (array_.size - i).times do |j|
      if array_[j + 1] &&
         array_[j] > array_[j + 1]
        array_[j], array_[j + 1] = array_[j + 1], array_[j]
      end
    end
  end
  array_
end

def bubble_sort_by(arr)
  array_ = arr
  array_.size.times do |i|
    (array_.size - i).times do |j|
      next unless array_[j + 1]

      order = yield(array_[j], array_[j + 1])
      array_[j], array_[j + 1] = array_[j + 1], array_[j] if order.positive? # swap elements
    end
  end
  array_
end

newarr = bubble_sort_by %w[hi hello hey] do |left, right|
  left.length - right.length
end

puts newarr
