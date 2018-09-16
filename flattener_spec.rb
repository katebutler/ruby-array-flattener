require_relative 'flattener'

describe Flattener do
  it 'returns nil if input is an integer' do
    input = 1234
    expect(Flattener.flatten(input)).to eq(nil)
  end

  it 'returns nil if input is an object' do
    input = {name: 'Kate'}
    expect(Flattener.flatten(input)).to eq(nil)
  end

  it 'returns input array if already flat' do
    input = [4, 3, 2, 1]
    expect(Flattener.flatten(input)).to eq([4, 3, 2, 1])
  end

  it 'flattens nested array' do
    input = [[99]]
    expect(Flattener.flatten(input)).to eq([99])
  end

  it 'flattens one dimension' do
    input = [1, 3, [2]]
    expect(Flattener.flatten(input)).to eq([1, 3, 2])
  end

  it 'flattens multi dimensions' do
    input = [1, [[2, 3], 4], 5, [[[6]]]]
    expect(Flattener.flatten(input)).to eq([1, 2, 3, 4, 5, 6])
  end

  # Note: Seems to work just fine with strings, objects etc included in the input array.
  # The project spec was to 'flatten an array of arbitrarily nested arrays of integers' though, so
  # tests for this have been excluded from the scope.
end