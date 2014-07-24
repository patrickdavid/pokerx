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
  if value_card[0].to_i + 1 == value_card[1].to_i && value_card[1].to_i + 1 == value_card[2].to_i && value_card[2].to_i + 1 == value_card[3].to_i && value_card[3].to_i + 1 == value_card[4].to_i
    winner = winninghand[4]
  end

store = []

count = 0
value_card.each do |value_of_card|
    if value_card[count] != value_card[count +1]
    store.push(value_card[count])
    count +=1
  else
    count +=1
  end
end

count = 0
card_counter = []
store.each do |value_of_card|
  card_counter.push(value_card.count(value_of_card))
end
puts(card_counter)

if card_counter == [1,1,1,2] || card_counter == [1,1,2,1] || card_counter == [1,2,1,1] || card_counter == [2,1,1,1]
  winner = winninghand[1]
end

if card_counter == [1,2,2] || card_counter == [2,2,1] || card_counter == [1,2,1] || card_counter == [2,1,2]
  winner = winninghand[2]
end


if card_counter == [1,1,3] || card_counter == [1,3,1] || card_counter == [3,1,1]
  winner = winninghand[3]
end


winner
end
