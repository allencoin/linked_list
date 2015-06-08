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