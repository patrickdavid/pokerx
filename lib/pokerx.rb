def pokerx(hand)
  winninghand = ["high-card", "pair", "two-pair", "three-of-a-kind", "straight", "flush", "full-house", "four-of-a-kind", "straight-flush", "royal-flush"]
  sortedhand = hand.sort
  0.upto(hand.length-1) do |i|
    if sortedhand[i][0] == sortedhand[i+1][0]
      # puts(sortedhand[i])
      # winninghand[1]
      "pair"
    end
  end
end
