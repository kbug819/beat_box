class LinkedList
  attr_reader :head
  def initialize
    @head = nil
 end


  def append(data)
    new_node = Node.new(data)
    current = @head

    if @head == nil
      @head = new_node
    else
      # current = @head 
      if current.next_node == nil
        current.next_node = new_node 
      end
    # if @head = nil?
    #   @head = node_1
    # end
    end
    # @count_node += 1
  end 

  def count 
    count = 0
    current = @head

    while current
      count += 1
      current = current.next_node
    end
    
    count
  end
    #  if head.data == nil
    #   @count_node = 0
    #  else
    #     @count_node = 1
    #     current_node = @head
    #     while current_node.next_node != nil
    #       current_node = current_node.next_node
    #       @count_node += 1
    #     end
    #  end

    
    # else
    #   count += 1 while head.next_node == nil
    # end
    # count = 0
    # while current.next_node.data == nil
    #   count +=1
    # end
    # if @head.data == nil
    #   0
    # else
    #   1
    # end
  

  def to_string
   if @head == nil
    nil
   else
    current = @head
      until current.next_node == nil do
        string = "#{string} #{current.data}"
        current = current.next_node
      end
    end

    string = "#{string} #{current.data}"
    string.strip
  end

  def prepend(data_1)
    new_node = Node.new(data_1)
    new_node = @head
    if @head == nil
      @head = new_node
    else
      current = Node.new(data_1)
      current.next_node = @head
      @head = current
    end
  end 

end



