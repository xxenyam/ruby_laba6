require_relative "../lib/my_gem"
require 'rspec'

RSpec.describe MyGem::FindDuplicates do
  describe '.find' do
    it 'returns duplicates from the array' do
      expect(MyGem::FindDuplicates.find([1, 7, 6])).to eq([])
      expect(MyGem::FindDuplicates.find([1, 1, 1, 1, 1])).to eq([1]) 
      expect(MyGem::FindDuplicates.find([1, 7, 6, 1, 5, 7])).to eq([1, 7])
      expect(MyGem::FindDuplicates.find([10, 20, 30, 10, 40, 30, 50])).to eq([10, 30]) 
      expect(MyGem::FindDuplicates.find([nil, nil, 1, 2, nil, 3])).to eq([nil]) 
      expect(MyGem::FindDuplicates.find(['a', 'b', 'a', 'c', 'b'])).to eq(['a', 'b'])
      expect(MyGem::FindDuplicates.find(['x', 'y', 'x', 'z', 'y', 'x'])).to eq(['x', 'y']) 
      expect(MyGem::FindDuplicates.find(['test', 'TEST', 'test', 'Test'])).to eq(['test'])  
      expect(MyGem::FindDuplicates.find([:foo, :bar, :foo, :baz, :bar])).to eq([:foo, :bar])  
      expect(MyGem::FindDuplicates.find([])).to eq([])
    end
  end
end

