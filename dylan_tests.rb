describe Thing do
  let(:thing) { Thing.new }

  it 'does something' do
    thing.do_something
  end
end

describe Thing do
  it 'does something' do
    @thing = Thing.new
    @thing.do_something
  end
end

describe Thing do
  before do
    @thing = Thing.new
  end

  it 'does something' do
    @thing.do_something
  end

  it 'does something else' do
    @thing.do_something_else
  end
end

describe Thing do
  let(:thing) { Thing.new }
  
  it 'does something' do
    thing.do_something
  end

  describe 'different case' do
    let(:thing) { Thing.new(case: 'different') }

    it 'does something else' do
      thing.do_something_else
    end
  end
end

describe Thing do
  let(:params) do
    {
      id: 1,
      name: 'tom',
      published: true
    }
  end
  
  it “does something” do
    thing.do_something
  end
  describe 'different case' do
    it 'does something else' do
      params.merge!(published: false)
      thing.do_something_else
    end
  end
end
