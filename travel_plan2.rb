def which_plan?(selected_num, plans)  
  loop do   
    # selected_numが1,2,3ではない場合もう一度選んでもらいます。
    if selected_num >= 4 || selected_num <= 0  
      print "1,2,3の中で選んでください>>"
      selected_num = gets.to_i
    else
      puts "#{plans.keys[selected_num - 1]}ですね。"    
    break
    end
  end
  return selected_num
end  

def how_many_people(people_num)
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

def total_price(final_plan_num, final_people_num, plans)
  selected_price = plans.values[final_plan_num - 1] # プランのお一人価格
  if final_people_num >= 1 && final_people_num <= 4
    puts "4名以下なので通常価格です。"
    puts "\n合計料金: #{selected_price * final_people_num}円です！、ありがとうございます！"
  else
    puts "5名以上なので★ 10%★ 割引となります。"    
    puts "\n合計料金: 10%割引して#{(selected_price * final_people_num * 0.9).floor}円です！、ありがとうございます！"
  end
end
# --------------------------------------------------------------------------------------------------
plans = { 沖縄旅行: 30000, 北海道旅行: 40000, 九州旅行: 15000} 

# 選択肢TEXT   
puts "どちらの旅行プランがよろしいですか?"
plans.each.with_index(1) do |(plan, price), i|
  puts " #{i} #{plan} #{price}円"
end

# planの番号入力値をもらう
print "\n番号を選んでください>>"
selected_num = gets.to_i
puts "\n"

final_plan_num = which_plan?(selected_num, plans)

# 人数の入力値をもらう
print "\n人数を選んでください>>"
people_num = gets.to_i
puts "\n"

final_people_num = how_many_people(people_num)

total_price(final_plan_num, final_people_num, plans)

