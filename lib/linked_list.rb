class LinkedList
  attr_reader :head
  def initialize
    @head = nil
  end

  def append(data)
    new_node = Node.new(data)

    if @head == nil
      @head = new_node
    else
      last_node = @head
      while last_node.next_node != nil
        last_node = last_node.next_node
      end
      last_node.next_node = new_node
    end
  end
   
  def count 
    count = 0
    last_node = @head

    while last_node != nil 
      count += 1
      last_node = last_node.next_node
    end
    count 
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
  
  def prepend(data_1) 
    if @head == nil
      @head = new_node
    else
      current = Node.new(data_1) 
      current.next_node = @head 
      @head = current 
    end
  end 
  
  def insert(index, data_2)
    new_node = Node.new(data_2)
    last_node = @head
    if last_node == nil
      new_node = @head
    else
      (index - 1).times do 
        last_node = last_node.next_node 
      end
      new_node.next_node = last_node.next_node 
      last_node.next_node = new_node 
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
      string << last_node.data + " " 
      last_node = last_node.next_node 
      counter += 1 
    end
    string.chop 
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

  def pop 
    last_node = @head
    previous_node = nil 
    until last_node.next_node == nil
      previous_node = last_node
      last_node = last_node.next_node
    end
    previous_node.next_node = nil 
  end
end

