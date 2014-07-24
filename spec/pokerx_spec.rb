require('rspec')
require('pokerx')

describe('pokerx') do
  it('if you have two cards of the same value, will return pair') do
    expect(pokerx(['2C', '5S', '3H', 'JD', '5H'])).to(eq("pair"))
  end

  it('if you have two cards of the same value, return pair') do
    expect(pokerx(['2C', '2S', 'JH', 'JD', '5H'])).to(eq("two-pair"))
  end

  it('if you have five cards and each card is 1 larger than the previous card, return straight') do
    expect(pokerx(['10C', 'JS', 'QH', 'KD', 'AH'])).to(eq("straight"))
  end

  it('if you have three cards of the same value, return three-of-a-kind') do
    expect(pokerx(['JC', 'KS', 'KH', 'KD', '6H'])).to(eq("three-of-a-kind"))
  end

  it('if you have four cards of the same value, return four-of-a-kind') do
    expect(pokerx(['5C', 'KS', '5H', '5D', '5S'])).to(eq("four-of-a-kind"))
  end

  it('if you have five cards of the same suit but different value, return flush') do
    expect(pokerx(['5C', 'KC', '7C', '3C', 'JC'])).to(eq("flush"))
  end

  it('if you have five cards of the same suit in order that includes two number cards, return staight flush') do
    expect(pokerx(['JS', '7S', '8S', '9S', '10S'])).to(eq("straight-flush"))
  end

  it('if you have five cards of the same suit in order that includes A,K,Q,J,10: return royal flush') do
    expect(pokerx(['10S', 'JS', 'QS', 'KS', 'AS'])).to(eq("royal-flush"))
  end

  it('if you have five cards of differing values') do
    expect(pokerx(['4S', 'JH', 'KS', '2S', 'AS'])).to(eq("high-card"))
  end

  it('if you have 3-of a kind and a pair') do
    expect(pokerx(['4D', '4H', '4S', 'AS', 'AS'])).to(eq("full-house"))
  end
end
