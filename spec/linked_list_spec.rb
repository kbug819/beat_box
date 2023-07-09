require './lib/node'
require './lib/linked_list'


describe LinkedList do

  describe '#initialize' do
    xit 'is an instance of LinkedList' do
    list = LinkedList.new

    expect(list).to be_an_instance_of(LinkedList)
    end
  end

  describe "#head" do
    xit "returns head" do
    list = LinkedList.new
  
    expect(list.head).to eq(nil)
    end
  end

  describe "#append" do
    it "add data to list" do
    list = LinkedList.new

    list.append("doop")

    expect(list.head.data).to eq("doop")
    expect(list.head).to be_an_instance_of(Node)
    expect(list.head.next_node).to eq(nil)
    list.append("deep")
    expect(list.head).to be_an_instance_of(Node)
    expect(list.head.next_node.data).to eq("deep")
    #this portion was very difficult, but a huge step forward after figuring it out!# 
    #Understanding the circular structure of going from head to next node, re-assigning value, next-node, etc. 
  end
  end
  

  describe "#count#" do
    xit "counts the amount of data listed" do
    # expect(list.count).to eq(0)  
    
    # list.append("doop")
    # expect(list.count).to  eq(1)
    # list.append("deep")
    expect(list.count).to eq(2)
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
      expect(list.head.data).to eq("dop")
      expect(list.to_string).to eq("dop plop suu")
      expect(list.count).to eq(3)
    end
  end

  describe "#insert" do
    xit "will submit an element to middle of list" do
      expect(list.to_string).to eq("dop plop suu")
      list.insert(1, "woo")
      expect(list.to_string).to eq("dop woo plop woo suu")
    end
  end

    describe "#find" do
      xit "will find the parameters in the list" do
        list.append("deep")
        list.append("woo")
        list.append("shi")
        list.append("shu")
        list.append("blop")
        expect(list.to_string).to eq("deep woo shi shu blop")
      end
    end



end



#Created a variable regarding the current node that you are on.
#count += 1
#Current node = head
#count until next_node is nil, if not, keep counting