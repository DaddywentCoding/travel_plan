plans =[
  {place: "沖縄旅行", price: 10000},
  {place: "北海道旅行", price: 20000},
  {place: "九州旅行", price: 15000}
]

def choose_plan(plans)
  puts "プランを選択"
  plans.each.with_index(1) do |plan, i|
    puts " #{i} #{plan[:place]} #{plan[:price]}円"
  end
  # planの番号入力値をもらう
  print "\n番号を選んでください>>"
  selected_num = gets.to_i
  puts "\n"
  loop do   
    # selected_numが1,2,3ではない場合もう一度選んでもらいます。
    if selected_num >= 4 || selected_num <= 0  
      print "1,2,3の中で選んでください>>"
      selected_num = gets.to_i
    else
      puts "#{plans[selected_num - 1][:place]}選択しました。"    
    break
    end
  end
  return plans[selected_num - 1]
end

def how_many_people
  print "\n人数を選んでください>>"
  people_num = gets.to_i
  puts "\n"
  loop do
    if people_num <= 0
      print "1名以上を入力してください>>"
      people_num = gets.to_i
    else      
      puts "全員で#{people_num}名ですね。"      
    break
    end
  end
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

choosed_plan = choose_plan(plans)
people_num = how_many_people
total_price(choosed_plan, people_num)


