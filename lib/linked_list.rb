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
      if next_node == nil
        next_node = new_node
    # if @head = nil?
    #   @head = node_1
    # end
    end
  end 

  def count #This method does not seem to be counting the length
    if @head.data == nil
      0
    else
      1
    end
  end

  def to_string
   puts head.data
  end
end
