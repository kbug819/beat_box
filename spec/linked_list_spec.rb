require './lib/node'
require './lib/linked_list'


describe LinkedList do

  describe '#initialize' do
    it 'is an instance of LinkedList' do
    list = LinkedList.new

    expect(list).to be_an_instance_of(LinkedList)
    end
  end

  describe "#head" do
    it "returns head" do
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
    it "counts the amount of data listed" do
      list = LinkedList.new

      expect(list.count).to eq(0)  
      list.append("doop")
      expect(list.count).to  eq(1)
      list.append("deep")
      expect(list.count).to eq(2)
    end
  end

  describe "#to_string" do
    it "returns all elements in the list" do
      list = LinkedList.new

      list.append("doop")
      expect(list.head.data).to eq("doop")
      list.append("deep")
      expect(list.to_string).to eq("doop deep")
    end
  end
  
  describe "#prepend" do
    it "will add nodes to the beginning of the list" do
      list = LinkedList.new

      list.append("plop")
      expect(list.to_string).to eq("plop")
      list.append("suu")
      expect(list.to_string).to eq("plop suu")
      list.prepend("dop")
      expect(list.head.data).to eq("dop")
      expect(list.to_string).to eq("dop plop suu")
      expect(list.count).to eq(3)
      # list.prepend("doowap") #Extra testing
      # expect(list.to_string).to eq("doowap dop plop suu")
      # list.append("hello")
      # expect(list.to_string).to eq("doowap dop plop suu hello")
    end
  end

  describe "#insert" do
    it "will submit an element to middle of list" do
      list = LinkedList.new
      list.append("plop")
      list.append("suu")
      list.prepend("dop")

      expect(list.to_string).to eq("dop plop suu")
      list.insert(1, "woo")
      expect(list.to_string).to eq("dop woo plop suu")
    end
  end

  describe "#find" do
    it "will find the parameters in the list" do
      list = LinkedList.new

      list.append("deep")
      list.append("woo")
      list.append("shi")
      list.append("shu")
      list.append("blop")
      expect(list.to_string).to eq("deep woo shi shu blop")
      # expect(list.find(2)).to eq("shi") #(used test to find the first parameter, will now tackle finding the second parameter for the method)
      expect(list.find(2, 1)).to eq("shi")
      expect(list.find(1, 3)).to eq("woo shi shu")
      # expect(list.find(3, 2)).to eq("shu blop") #test line
    end
  end

  describe "#includes?" do
    it "will give boolean if element listed" do
      list = LinkedList.new

      list.append("deep")
      list.append("woo")
      list.append("shi")
      list.append("shu")
      list.append("blop")
      expect(list.includes?("deep")).to eq(true)
      expect(list.includes?("dep")).to eq(false)
    end
  end

  describe "#pop" do
    it "takes the last element from list" do
      list = LinkedList.new

      list.append("deep")
      list.append("woo")
      list.append("shi")
      list.append("shu")
      list.append("blop")
      # expect(list.pop).to eq("blop")
      # expect(list.pop).to eq("shu")
      list.pop
      expect(list.to_string).to eq("deep woo shi shu")
      list.pop
      expect(list.to_string).to eq("deep woo shi")
    end
  end


end





