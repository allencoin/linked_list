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

# takes the initialized node [like LinkedListNode.new(37)
# which is node1 = 37 --> nil, which is 
# (value --> next_node=nil)]
def print_values(list_node)
    # prints the node (node1)'s first element, which is
    # node1.value, which is 37
    # followed by an arrow
    print "#{list_node.value} --> "
    # THEN, if next_node = nil (which is default, which
    # means we've reached the end of list_node or node1)
    # ...
    if list_node.next_node.nil?
      # ... prints nil, signifying the end of the line
      print "nil\n"
      return
    else
      # BUT if next_node != nil, which means we still have
      # some numbers to print, we loop through the function
      # again, sending us back up to the beginning of the
      # function. 
      print_values(list_node.next_node)
      # So what this here is doing is taking the 
      # print_values function and applying it to the
      # next_node, which in this case could be node2
      # if list_node = node3, and then we print the 
      # value and check to see if we're at the end. 
      # We keep looping until we reach nil/the end.
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
node4 = LinkedListNode.new(4, node3)
 
puts "node1:"
  print_values(node1)
puts "node2:"
  print_values(node2)
puts "node3:"
  print_values(node3)
puts "node4:"
  print_values(node4)

# puts "-----reverse stuff-----"

# revlist = reverse_list(node3)

# print_values(revlist)