require('rspec')
require('pokerx')

describe('pokerx') do
  it('if you have two cards of the same value, it will return pair') do
    expect(pokerx(['2C', '5S', '3H', 'JD', '5H'])).to(eq("pair"))
  end
  it('if you have two cards of the same value, it will return pair') do
    expect(pokerx(['2C', '2S', 'JH', 'JD', '5H'])).to(eq("two-pair"))
  end
  it('if you have five cards and each card is 1 larger than the previous card, return straight') do
    expect(pokerx(['2C', '3S', '4H', '5D', '6H'])).to(eq("straight"))
  end
  it('if you have three cards of the same value, it will return three-of-a-kind') do
    expect(pokerx(['JC', 'KS', 'KH', 'KD', '6H'])).to(eq("three-of-a-kind"))
  end
end
