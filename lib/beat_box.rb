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
 puts `say -r 150 -v Boing #{list.to_string}`
end


end

# bb = BeatBox.new
# bb.append("deep doo ditt")
# bb.append("woo hoo shu")
# bb.play
