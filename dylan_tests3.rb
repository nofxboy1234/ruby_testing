class A

end

describe A do
  it 'is instantiated by RSpec' do
    expect(subject).to be_an(A)
  end
end

describe 'anonymous subject' do
  subject { A.new }
  it 'has been instantiated' do
    expect(subject).to be_an(A)
  end
end

describe 'named subject' do
  subject(:a) { A.new }
  it 'has been instantiated' do
    expect(a).to be_an(A)
  end
end

describe 'named subject' do
  subject(:a) { A.new }
  it 'has been instantiated' do
    expect(subject).to be_an(A)
  end
end

describe A do
  it { is_expected.to be_an(A) }
end

