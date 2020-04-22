require 'pry'

class ListNode
    attr_accessor :val, :next

    def initialize(val)
      @val = val
      @next = nil
    end

    def add_nodes(new_node)
        x = self
        if !x.val
            x.val = ListNode.new(new_node)
        else
            while x.next
                x = x.next
            end
            x.next = ListNode.new(new_node)
        end
        binding.pry
    end
  end

  def merge_two_sorted_linked_lists(list1, list2)
    result = []
    # start a new list with a nil value, which you'll need to skip later
    new_list = ListNode.new(nil) 
    # we need to keep track of the start of this linked list for later, also
    head = new_list
    # if head.next == nil
    #     new_list = ListNode.new(list1)
    # end

    new_list.add_nodes(list1)
    new_list.add_nodes(list2)
    # return our result array
    result = new_list
  end



  # test cases:
  list1 = ListNode.new(1)
  list1.next = ListNode.new(3)
  list1.next.next = ListNode.new(5)
  list2 = ListNode.new(2)
  list2.next = ListNode.new(4)
  list2.next.next = ListNode.new(6)
  puts 'test case 1 failed' if merge_two_sorted_linked_lists(list1, list2) != [1,2,3,4,5,6]
  list1 = ListNode.new(1)
  list1.next = ListNode.new(2)
  list2 = ListNode.new(4)
  list2.next = ListNode.new(5)
  list2.next.next = ListNode.new(6)
  puts 'test case 2 failed' if merge_two_sorted_linked_lists(list1, list2) != [1,2,4,5,6]
  list1 = ListNode.new(10)
  list1.next = ListNode.new(20)
  list1.next.next = ListNode.new(40)
  list2 = ListNode.new(0)
  puts 'test case 3 failed' if merge_two_sorted_linked_lists(list1, list2) != [0, 10, 20, 40]
  puts 'all done!'