require './lib/node'
node = Node.new("plop")


describe Node do
  describe '#initialize' do
    it 'is an instance of node' do

    # node = Node.new("plop")
    expect(node).to be_an_instance_of(Node)
    end
  end
  describe "#data" do
    it "returns the data" do

    expect(node.data).to eq("plop")
    end
  end
   describe "#next_node" do
    it "returns next_node" do

    expect(node.next_node).to eq(nil)
    end
  end



end

#   describe "name" do
#     it "returns the name of the student" do
    
#     student = Student.new('Penelope')  
    
#     expect(student.name).to eq("Penelope")
#     end
#   end

#   describe "#cookies" do
#     it "returns an array of cookies" do

#     student = Student.new('Penelope') 

#     expect(student.cookies).to eq([])
#     end
#   end

#   describe "#add_cookie" do
#     it "returns added cookies to cookies array" do

#       student = Student.new('Penelope')
#       student.add_cookie('Chocolate Chunk')
#       expect(student.cookies).to eq(['Chocolate Chunk'])
#       student.add_cookie('Snikerdoodle')
#       expect(student.cookies).to eq(['Chocolate Chunk', 'Snikerdoodle'])

#       # expect(student.)
#     end
#   end

# end