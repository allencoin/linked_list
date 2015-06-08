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

  # Push an item onto the stack
  def push(element)
    # IMPLEMENTME!
  end

  # Pop an item off the stack
  # Remove the last item that was pushed
  # onto the stack and return it to the user
  def pop
    # IMPLEMENT ME
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

def reverse_list(list)
  # ADD CODE HERE

  while list
    # ADD CODE HERE
    list = list.next_node
  end

  #ADD CODE HERE
end
 
node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)
 
puts "node1:"
  print_values(node1)
puts "node2:"
  print_values(node2)
puts "node3:"
  print_values(node3)

puts "-----reverse stuff-----"

revlist = reverse_list(node3)

print_values(revlist)