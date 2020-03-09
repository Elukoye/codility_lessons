# frozen_string_literal: true

def solution(s)
  stack = []
  hash = { '{' => '}', '[' => ']', '(' => ')' }

  s.each_char do |char|
    if hash[stack.last] == char
      stack.pop
    else
      stack << char
    end
  end
  return 1 if stack.empty?

  0
end

puts solution('()')
puts solution('[}(]')
