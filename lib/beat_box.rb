# require './linked_list'
# require './node'

class BeatBox
  attr_reader :list
  def initialize
    @list = list = LinkedList.new
  end


def append(data)
  new_data = data.split
  
  new_data.each do |nd|
    list.append(nd)
  end

  # list.append(new_data[0])
  # list.append(new_data[1])
  # list.append(new_data[2])

end

def count
  list.count
end

def play
 puts `say -r 500 -v Boing #{list.to_string}`
#  puts `say -r 150 -v Boing #{list.to_string}`
end

# def all
#   string = ""
#   new_data = list.to_string.split
#   new_data.each do |nd|
#     if nd == "deep" || "do" || "sleep"
#     end
#   end
#   new_data.to_s.delete! "^A-Za-z"
# end
end

# def all
#   string = ""
#   if @head == nil
#     nil
#   else
#     last_node = @head
#     until last_node.next_node == nil do
#       last_node = last_node.next_node
#       string = "#{string} #{last_node.data}" 
#     end
#       if last_node.data == "deep" || "do" || "sleep"
#         string = "#{string} #{last_node.data}"
#         string.strip #takes away all whitespace
#     end
#    end
#   end
# end
   



