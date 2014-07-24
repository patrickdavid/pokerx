def pokerx(hand)
  suits = []
  value_card =[]
  winninghand = ["high-card", "pair", "two-pair", "three-of-a-kind", "straight", "flush", "full-house", "four-of-a-kind", "straight-flush", "royal-flush"]
  sortedhand = hand.sort
  sortedhand.each{|card| value_card.push(card[0])}
  sortedhand.each{|card| suits.push(card[1])}
  sorted_suits = suits.sort

  i = 0
  value_card.each do |value|
    if value == "J"
      value_card[i] = 11
    elsif value == "Q"
      value_card[i] = 12
    elsif value == "K"
      value_card[i] = 13
    elsif value == "A"
      value_card == 14

    end
    i = i +1
  end
  puts(value_card)

  if value_card.count("5") == 2
    winner = winninghand[1]
  end
  if value_card[0].to_i + 1 == value_card[1].to_i && value_card[1].to_i + 1 == value_card[2].to_i && value_card[2].to_i + 1 == value_card[3].to_i && value_card[3].to_i + 1 == value_card[4].to_i
    winner = winninghand[4]
  end
  winner
  # puts(sorted_suits)
  # puts(value_card)
end

# card_test = [3,3,4,5,5,5,"J","J","J","A"]


# count = 0
# card_test.each do |value_of_card|
#   store = []
#   if card_test[count] != card_test[count +1]
#     store.push(card_test[count])
#     count +=1
#   else
#     count +=1
#   end
#   puts(store)
# end
