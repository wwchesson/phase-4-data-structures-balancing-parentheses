require_relative './stack'
require "pry"

def balancing_parentheses(string)
    stack = Stack.new

    str_stack = stack.push(string.chars).flatten

    left = "("
    right = ")"

    left_count = str_stack.count(left)
    right_count = str_stack.count(right)


    difference = if str_stack.first == ")" || str_stack.last == "("
        2
    else
        (left_count - right_count).abs
    end 
    
    difference
end

# def balancing_parentheses(str)
#     stack = Stack.new
  
#     str.chars.each do |c|
#         binding.pry
#       if stack.peek == '(' && c == ')'
#         stack.pop
#       else
#         stack.push(c)
#       end
#     end
#     stack.size
#   end
