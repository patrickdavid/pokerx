require('rspec')
require('pokerx')

describe('pokerx') do
  it('you have a high card, you should fold') do
    expect(pokerx(['2C', '5S', '3H', '6D', '5H'])).to(eq(["pair"]))
  end
end
