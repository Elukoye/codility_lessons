# frozen_string_literal: true

require './brackets.rb'

RSpec.describe '#brackets' do
  it 'returns 1 if brackets are balanced ' do
    s = '()'
    expect(solution(s)).to eq(1)
  end

  it 'returns 0 if brackets are not balanced' do
    s = '[}(]'
    expect(solution(s)).to eq(0)
  end
end
