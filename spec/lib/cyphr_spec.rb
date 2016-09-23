require 'spec_helper'
require 'cyphr'

describe CaeserCipherer do
  it 'converts text to cipher with a factor' do
    cipherer = CaeserCipherer.new
    expect(cipherer.convert("What a string!", 5)).to eq("Bmfy f xywnsl!"  )
    expect(cipherer.convert('hello', 2)).to eq('jgnnq')
  end
end