class LinkedList
  attr_reader :head
  def initialize
    @head = nil
 end


  def append(data)
    new_node = Node.new(data)
    # current = @head - redifined below, better understanding of 'last_node'

    if @head == nil
      @head = new_node
    else
      last_node = @head
      while last_node.next_node != nil
        last_node = last_node.next_node
      end
      # will do the while function until we are at the end of the list
      last_node.next_node = new_node
    end
  end
    # current.next_node = new_node
      # current = @head 
      # if current.next_node == nil #line 16 - 18 working for two elements only
      #   current.next_node = new_node 
      # end
    # if @head = nil?
    #   @head = node_1
    # end
    # @count_node += 1
   
  def count 
    count = 0
    last_node = @head

    while last_node != nil #continues until last_node is not nil
      count += 1
      last_node = last_node.next_node
    end
    count #prints the count
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
  

  def to_string # Need to do further research on this method to better understand
   string = ""
    if @head == nil
    nil
   else
    last_node = @head
      until last_node.next_node == nil do
        string = "#{string} #{last_node.data}" #adds each data point to the empty string
        last_node = last_node.next_node
      end
    end

    string = "#{string} #{last_node.data}"
    string.strip #takes away all whitespace
  end

  def prepend(data_1) #moving data to the head of the list
    new_node = Node.new(data_1)
    if @head == nil
      @head = new_node
    else
      current = Node.new(data_1) #moving the new node to the current head and setting current head to next_node
      current.next_node = @head
      @head = current
    end
  end 

  def find(index, number) 
      last_node = @head
      counter = 0
      string = ""

      while counter < index
        last_node = last_node.next_node
        counter += 1
      end

      until counter == (number + index) 
        string << last_node.data  #Cannot figure out how to add a space
        last_node = last_node.next_node
        counter += 1
      end
      string
      # last_node.next_node.data 

        # (number - 1).times do
        # end
        # (number - 1).times do
        #   last_node.next_node.data
        #   # (number - 1).times do
        #   #   last_node = last_node.next_node
        #   end

      # (number - 1).times do
      # last_node.next_node.data
      # end

    end  


  # def find(index) # This method worked to find the element at the index number, will update to add second parameter
  #   last_node = @head

  #   (index - 1).times do
  #     last_node = last_node.next_node
  #   end
  #   last_node.next_node.data 
  # end  

  def includes?(value)
    last_node = @head
    # current_data = last_node.data

    # if current_data == value
    #   true
    # else
    #   while current_data != value
    #     last_node = last_node.next_node
    #   end
    #   true
      until last_node.data == value
        last_node = last_node.next_node
        break if last_node.next_node == nil
      end
      if 
        last_node.next_node == nil
        false 
      else
        true
      end
  end

  def pop
    last_node = @head
    previous_node = nil

    until last_node.next_node == nil
      previous_node = last_node
      last_node = last_node.next_node
    end
    previous_node.next_node = nil
    last_node.data

  end

  def insert(index, data_2)
    new_node = Node.new(data_2)
    current = @head
    if current == nil
      new_node = @head
    else
      (index - 1).times do
        current = current.next_node
    end
      new_node.next_node = current.next_node
      current.next_node = new_node
  end




  



end








end
