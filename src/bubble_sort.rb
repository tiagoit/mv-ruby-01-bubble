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

puts bubble_sort [5, 4, 3, 2, 1, 0]
