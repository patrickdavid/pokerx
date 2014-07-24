def pokerx(hand)
  suits = []
  og_value_card =[]
  winninghand = ["high-card", "pair", "two-pair", "three-of-a-kind", "straight", "flush", "full-house", "four-of-a-kind", "straight-flush", "royal-flush"]
  sortedhand = hand.sort


  sortedhand.each{|card| og_value_card.push(card[0])}
  sortedhand.each{|card| suits.push(card[1])}
  sorted_suits = suits.sort

  z = 0
  sorted_suits.each do |suit|
    if suit == "0"
      sorted_suits[z] = sortedhand[z][2]
      z =z+1
    else
      z =z+1
    end
  end


  i = 0
  og_value_card.each do |value|
    if value == "1"
      og_value_card[i] = 10
    elsif value == "J"
      og_value_card[i] = 11
    elsif value == "Q"
      og_value_card[i] = 12
    elsif value == "K"
      og_value_card[i] = 13
    elsif value == "A"
      og_value_card[i] = 14
    elsif value == "a"
      og_value_card[i] = 1
    else
      og_value_card[i] = og_value_card[i].to_i
    end
    i = i +1
  end

value_card = og_value_card.sort

  if (value_card.inject(0) {|sum, i| sum +i} == 60) && sorted_suits[0] == sorted_suits[1] && sorted_suits[1] == sorted_suits[2] && sorted_suits[2] == sorted_suits[3] && sorted_suits[3] == sorted_suits[4]
    winner = winninghand[9]
  elsif sorted_suits[0] == sorted_suits[1] && sorted_suits[1] == sorted_suits[2] && sorted_suits[2] == sorted_suits[3] && sorted_suits[3] == sorted_suits[4] && value_card[0] + 1 == value_card[1] && value_card[1] + 1 == value_card[2] && value_card[2] + 1 == value_card[3] && value_card[3] + 1 == value_card[4]
    winner = winninghand[8]  # straight flush
  elsif
    value_card[0] + 1 == value_card[1] && value_card[1] + 1 == value_card[2] && value_card[2] + 1 == value_card[3] && value_card[3] + 1 == value_card[4]
    winner = winninghand[4]  #straight
  elsif
    sorted_suits[0] == sorted_suits[1] && sorted_suits[1] == sorted_suits[2] && sorted_suits[2] == sorted_suits[3] && sorted_suits[3] == sorted_suits[4]
    winner = winninghand[5]#flush
  elsif value_card[0] != value_card[1] && value_card[1] != value_card[2] && value_card[2]!= value_card[3] && value_card[3] != value_card[4]
    winner = winninghand[0]



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


if card_counter == [1,1,1,2] || card_counter == [1,1,2,1] || card_counter == [1,2,1,1] || card_counter == [2,1,1,1]
  winner = winninghand[1] #pair
end

if card_counter == [1,2,2] || card_counter == [2,2,1] || card_counter == [1,2,1] || card_counter == [2,1,2]
  winner = winninghand[2] #two-pair
end

if card_counter == [1,1,3] || card_counter == [1,3,1] || card_counter == [3,1,1]
  winner = winninghand[3] #3-of-a-kind
end

if card_counter == [1,4] || card_counter == [4,1]
  winner = winninghand[7] #4-of-a-kind
end

if card_counter == [2,3] || card_counter == [3,2]
  winner = winninghand[6] #4-of-a-kind
end



winner
end
