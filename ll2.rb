class LinkedListNode
  attr_accessor :value, :next_node

  # final next_node = nil, which = end of LinkedList
  def initialize(value, next_node=nil)
    @value = value
    # default next_node = nil
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
    # This should function kind of like print_values
    # except we're pushing the integer to the data storage
    # ... if that makes sense

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
    # Checks to see if end of LinkedList
    if list_node.next_node.nil?
      # prints nil, indicating end of LinkedList
      print "nil\n"
      return
    else
      # Prints the new number, followed by the
      # previous LinkedList
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
 
# There is no next_node here, and next_node
# default to nil, so this is 37 --> nil
node1 = LinkedListNode.new(37)
# pushes 99 in front of 37 --> nil
node2 = LinkedListNode.new(99, node1)
# pushes 12 in front of 99 --> 37 --> nil
node3 = LinkedListNode.new(12, node2)
# each new LinkedListNode is pushed to
# the front of the line
node4 = LinkedListNode.new(4, node3)
#=> 4 --> 12 --> 99 --> 37 --> nil
# when using print_values


revlist = reverse_list(node3)

print_values(revlist)