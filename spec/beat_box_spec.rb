require './lib/beat_box'
require './lib/linked_list'
require './lib/node'

describe BeatBox do

  describe "#initialize" do
    it "is an instance of" do
      
      bb = BeatBox.new
      expect(bb).to be_an_instance_of(BeatBox)
      expect(bb.list).to be_an_instance_of(LinkedList)
      expect(bb.list.head).to eq(nil)
    end
  end

  describe "append" do
    it "adds elements to the list" do

      bb = BeatBox.new
      bb.append("deep doo ditt")
      expect(bb.list.head.data).to eq("deep")
      expect(bb.list.head.next_node.data).to eq("doo")
      bb.append("woo hoo shu")
      expect(bb.count).to eq(6)
    end
  end

  describe "#play" do
    it "plays the input from the terminal" do
      bb = BeatBox.new
      bb.append("deep doo ditt woo hoo shu")
      expect(bb.count).to eq(6)
      expect(bb.list.to_string).to eq("deep doo ditt woo hoo shu")
      bb.play
    end
  end

  describe "#all" do
    xit "only returns accepted values" do
      bb= BeatBox.new
      bb.append("deep do")
      expect(bb.all).to eq("deep do")
      bb.append("mississipi")
      expect(bb.all).to eq("deep do")
      
    end
  end



end