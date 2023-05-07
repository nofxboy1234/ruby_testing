# require 'pry-byebug'

# # Implicitly defined subject

# # subject exposed in top level group
# describe Array do
#   it 'should be empty when first created' do
#     # subject.should be_empty
#     expect(subject).to be_empty
#   end
# end

# # subject in a nested group
# describe Array do
#   describe 'when first created' do
#     it 'should be empty' do
#       # subject.should be_empty``
#       expect(subject).to be_empty
#     end
#   end
# end

# subject in a nested group with a different class (outermost wins)
class ArrayWithOneElement < Array
  def initialize(*)
    super
    unshift 'first element'
  end
end

describe Array do
  describe ArrayWithOneElement do
    context 'referenced as subject' do
      it 'should be empty (because it is the Array declared at the top)' do
        # binding.pry
        # subject.should be_empty
        expect(subject).to be_empty
      end
    end
  end
end
