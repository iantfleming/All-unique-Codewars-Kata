require 'string'

describe String do
  subject(:string) { String.new('foo') }

  it 'can create an instance of String' do
    expect(string).to be_kind_of(String)
  end

  describe '#split_string' do
    it 'can split the contents of a string' do
      expect(string.split_string).to eq(%w[f o o])
    end
  end

  describe '#is_unique?' do
    it 'can check if the string array has unique characters' do
      expect(string.is_unique?(%w[f o o])).to eq(false)
    end
    it '' do
      expect(string.is_unique?(%w[a s d f g h ])).to eq(true)
    end
    it 'is case sensitive' do
      expect(string.is_unique?(%w[A a])).to eq(true)
    end
  end

  describe '#check' do
    it 'will check to see if a string contains all unqiue characters' do
      expect(string.check).to eq(false)
    end
    it '' do
      string = String.new('abcdefgABCDEFG')
      expect(string.check).to eq(true)
    end
  end



end
