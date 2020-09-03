def choose_plan
  plans =[
  {place: "沖縄旅行", price: 10000},
  {place: "北海道旅行", price: 20000},
  {place: "九州旅行", price: 15000},
  {place: "宇宙旅行", price: 30000}
  ]

  puts "プランを選択"
  plans.each.with_index(1) do |plan, i|
    puts " #{i} #{plan[:place]} #{plan[:price]}円"
  end
  # planの番号入力値をもらう
  print "\n番号を選んでください>>"
  selected_num = gets.to_i
  puts "\n"

  loop do
    # selected_numがplans配列の要素の数より小さいか同じであればLoopを抜けます。
    break if selected_num >= 1 && selected_num <= plans.length
    print "1から#{plans.length}の中で選んでください>>"
    selected_num = gets.to_i
  end

  puts "#{plans[selected_num - 1][:place]}選択しました。"
  return plans[selected_num - 1]
end

def how_many_people
  print "\n人数を選んでください>>"
  people_num = gets.to_i
  puts "\n"
  loop do
    break if people_num >= 1
      print "1名以上を入力してください>>"
      people_num = gets.to_i
  end
  puts "全員で#{people_num}名ですね。"      
  return people_num
end

def total_price(choosed_plan, people_num)  
  if people_num >= 1 && people_num <= 4
    puts "\n4名以下なので通常価格です。"
    puts "合計料金: #{choosed_plan[:price] * people_num}円です！、ありがとうございます！"
  else
    puts "\n5名以上なので★ 10%★ 割引となります。"    
    puts "合計料金: 10%割引して#{(choosed_plan[:price] * people_num * 0.9).floor}円です！、ありがとうございます！"
  end
end

choosed_plan = choose_plan
people_num = how_many_people
total_price(choosed_plan, people_num)


