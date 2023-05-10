$count = 0
describe "let" do
  let(:count) do
    puts 'let(:count) evaluated'
    $count += 1
  end

  let(:colour) { 'red' }

  context 'when colour is green' do
    let(:colour) { 'green' }

    it 'is green' do
      expect(colour).to eq('green')
    end
    
    it "stores the value" do
      expect(count).to eq(1)
      expect(count).to eq(1)
    end
  end

  context 'when colour is the original red' do
    it 'is red' do
      expect(colour).to eq('red')
    end

    it "is not cached across examples" do
      expect(count).to eq(2)
    end
  end
end

