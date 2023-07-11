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
   
  def count 
    count = 0
    last_node = @head

    while last_node != nil #continues until last_node is not nil
      count += 1
      last_node = last_node.next_node
    end
    count #prints the count
  end
  
    def to_string 
      string = ""
       if @head == nil
       nil
      else
       last_node = @head
         until last_node.next_node == nil do
          string << last_node.data + " "
          last_node = last_node.next_node
         end
       end
       string << last_node.data + " "
       string.chop 
     end
  
  def prepend(data_1) #moving data to the head of the list
    # new_node = Node.new(data_1) - removed, didn't need
    if @head == nil
      @head = new_node
    else
      current = Node.new(data_1) #moving the new node to the current head 
      current.next_node = @head #setting current head to next_node
      @head = current #setting new node to the head position
    end
  end 
  
  def insert(index, data_2)
    new_node = Node.new(data_2)
    last_node = @head
    if last_node == nil
      new_node = @head
    else
      (index - 1).times do #-1 to get the correct the correct place in the list
        last_node = last_node.next_node #moving through list
      end
      new_node.next_node = last_node.next_node #reassigning last node to next node of new
      last_node.next_node = new_node #reassigning pointers
    end
    
    def find(index, number) 
      last_node = @head
      counter = 0
      string = ""
      
      while counter < index
        last_node = last_node.next_node
        counter += 1 #moves through the list until reaches index number
      end
      
      until counter == (number + index) #moves from index + number of spaces
        string << last_node.data + " " #this line adds space between first data and new data being entered
        last_node = last_node.next_node #moving through the list
        counter += 1 #reaches total between the two numbers
      end
      string.chop #prints string without space at the end
    end
 
    def includes?(value)
      last_node = @head
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

    def pop #delets and returns last element
      last_node = @head
      previous_node = nil #addition of previous node to mark the space before
      
      until last_node.next_node == nil
        previous_node = last_node
        last_node = last_node.next_node
      end
      previous_node.next_node = nil #resets previous node to nil next node
    end
  end
  

  
  
  



end
