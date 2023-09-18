require_relative './node'

class LinkedList
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  # def reverse!
  #   if @head == nil
  #     return
  #   end
    
  #   curr = @tail
    
  #   while curr.prev_node
  #     curr.next_node = curr.prev_node
  #   end
  #   @head = @tail
  #   @tail = @head
  # end

  def reverse!
    return if @head.nil?
  
    curr = @head
    prev = nil
  
    while curr
      next_node = curr.next_node
      curr.next_node = prev
      curr.prev_node = next_node
      prev = curr
      curr = next_node
    end
  
    @tail = @head
    @head = prev
  end

end
