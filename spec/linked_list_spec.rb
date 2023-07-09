require './lib/node'
require './lib/linked_list'

list = LinkedList.new

describe LinkedList do

  describe '#initialize' do
    xit 'is an instance of LinkedList' do

    expect(list).to be_an_instance_of(LinkedList)
    end
  end

  describe "#head" do
    it "returns head" do

    expect(list.head).to eq(nil)
    end
  end

  describe "#append" do
    xit "add data to list" do

    list.append("doop")
    expect(list.head.data).to eq("doop")
    expect(list.head).to be_an_instance_of(Node)
    expect(list.head.next_node).to eq(nil)
    list.append("deep")
    expect(list.head).to be_an_instance_of(Node)
    expect(list.head.next_node.data).to eq("deep")
    #this portion was very difficutl, but a huge step forward after figuring it out!# 
  

    end
  end
  

  describe "#count#" do
    it "counts the amount of data listed" do
    # expect(list.count).to eq(0)  
    
    list.append("doop")
    expect(list.count).to eq(1)
    list.append("deep")
    expect(list.count).to eq(2)
    list.append("sooo")
    list.append("drooo")
    require 'pry';binding.pry
    expect(list.count).to eq(4)

    end
  end

  describe "#to_string" do
    xit "returns all elements in the list" do

      list.append("doop")
      list.append("deep")

      expect(list.head.data).to eq("doop")
      expect(list.to_string).to eq("doop deep")
    end
  end
  
  describe "#prepend" do
    xit "will add nodes to the beginning of the list" do
      list.append("plop")
      expect(list.to_string).to eq("plop")
      list.append("suu")
      expect(list.to_string).to eq("plop suu")
      list.prepend("dop")

    end
  end


end



#Created a variable regarding the current node that you are on.
#count += 1
#Current node = head
#count until next_node is nil, if not, keep counting