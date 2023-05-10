# $count = 0
# describe "let" do
#   let(:count) do
#     puts 'let(:count) evaluated'
#     $count += 1
#   end

#   let(:colour) { 'red' }

#   context 'when colour is green' do
#     let(:colour) { 'green' }

#     it 'is green' do
#       expect(colour).to eq('green')
#     end
    
#     it "stores the value" do
#       expect(count).to eq(1)
#       expect(count).to eq(1)
#     end
#   end

#   context 'when colour is the original red' do
#     it 'is red' do
#       expect(colour).to eq('red')
#     end

#     it "is not cached across examples" do
#       expect(count).to eq(2)
#     end
#   end
# end


# $count = 0
# describe "let!" do
#   invocation_order = []

#   let!(:count) do
#     invocation_order << :let!
#     $count += 1
#   end

#   it "calls the helper method in a before hook" do
#     invocation_order << :example
#     expect(invocation_order).to eq([:let!, :example])
#     expect(count).to eq(1)
#   end
# end


class User
  def tests
    @tests ||= []
  end
end

describe User do
  before(:each) do
    @user = User.new
  end

  describe "initialized in before(:each)" do
    it "has 0 tests" do
      # @user.should have(0).tests
      expect(@user.tests.size).to eq(0)
    end

    it "can accept new tests" do
      @user.tests << Object.new
    end

    it "does not share state across examples" do
      # @user.should have(0).tests
      expect(@user.tests.size).to eq(0)
    end
  end
end