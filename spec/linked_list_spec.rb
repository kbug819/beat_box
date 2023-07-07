require './lib/node'
require './lib/linked_list'

list = LinkedList.new

describe LinkedList do

  describe '#initialize' do
    it 'is an instance of LinkedList' do

    expect(list).to be_an_instance_of(LinkedList)
    end
  end

  describe "#head" do
    it "returns head" do

    expect(list.head).to eq(nil)
    end
  end

  describe "#append" do
    it "add data to list" do

    list.append("doop")
    expect(list.head.data).to eq("doop")
    expect(list.head).to be_an_instance_of(Node)
    expect(list.head.next_node).to eq(nil)
    end
  end
  

  describe "#count#" do
    it "counts the amount of data listed" do

    list.append("doop")
    expect(list.count).to eq(1)
    end
  end

  describe "#to_string" do
    it "returns all elements in the list" do

      list.append("doop")
      expect(list.head.data).to eq("doop")
    end
  end

  describe "#head" do
    it "returns data from next_node" do

      expect(list.head.next_node).to eq(nil)
    end
  end

  describe "#append" do
    it "adds an additional element to the list" do
      
      list.append("doop")
      list.append("deep")
      expect(list.head.data).to eq("doop")
      expect(list.head).to be_an_instance_of(Node)
      # expect(list.head.next_node).to be_an_instance_of(Node)
      expect(list.head.next_node.data).to eq("deep")
    end
  end


end

