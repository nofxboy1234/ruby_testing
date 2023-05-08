# require 'pry-byebug'
require 'rubocop'

# Implicitly defined subject

# subject exposed in top level group
describe Array do
  it 'should be empty when first created' do
    # subject.should be_empty
    expect(subject).to be_empty
  end
end

# subject in a nested group
describe Array do
  describe 'when first created' do
    it 'should be empty' do
      # subject.should be_empty``
      expect(subject).to be_empty
    end
  end
end

# subject in a nested group with a different class (innermost wins)
class ArrayWithOneElement < Array
  def initialize(*)
    super
    unshift "first element"
  end
end

RSpec.describe Array do
  describe ArrayWithOneElement do
    context "referenced as subject" do
      it "contains one element" do
        expect(subject).to include("first element")
      end
    end
  end
end

puts "rubocop version loaded: #{Gem.loaded_specs['rubocop'].version}"
