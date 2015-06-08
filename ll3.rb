class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

class Stack
  attr_reader :data

  def initialize
    @data = nil
  end

  # We can't access Array.push so we have to write
  # it ourselves. What exactly does Array.push do?
  # Well... it takes the current array and puts the 
  # new elements at the end.
  # So if @data is kinda working like our array, 
  # we want to loop through @data and add the first
  # part of the linkedlist, then the second, then loop
  # again to make sure we're done and then add nil. 
  # So this works kind of like print_values except we're
  # storing things in memory. 
  # This is making my head spin. 
  # So this is going to be recursive like print_values. 
  def push(element)
    
  end

  # We can't access Array.pop so we have to write
  # it ourselves. What exactly does Array.pop do?
  def pop

  end
end

def print_values(list_node)
  print "#{list_node.value} --> "
  if list_node.next_node.nil?
    print "nil\n"
    return
  else
    print_values(list_node.next_node)
  end
end

# We also can't reverse this like we would an array,
# so how do we implement that here? 
def reverse_list(list)
  while list
    list = list.next_node
  end
end
 
node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)
node4 = LinkedListNode.new(4, node3)

print_values(node4)

puts "------"

# We basically have to write 3 functions that previously
# have been implicit in Ruby with Arrays, but we can't
# use arrays here. Once those three functions work, the
# below will work. 

# revlist = reverse_list(node3)

# print_values(revlist)