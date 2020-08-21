# ruby基礎 Q16のまねをして配列の中ハッシュでplanを整理
plans = [
  { name: "沖縄旅行",  price: 30000 },
  { name: "北海道旅行", price: 40000 },
  { name: "九州旅行", price: 15000 }
]

# 選択肢TEXT
puts "どちらの旅行プランがよろしいですか?"
plans.each.with_index(1) do |plan, i|
  puts "#{i}. #{plan[:name]} (¥#{plan[:price]})"
end

# planの番号入力値をもらう
print "\n番号を選んでください>>" 
selected_num = gets.to_i  #getsメソッドの文字列値を整数に変更
puts "\n"

# planの条件分岐
loop do   
  if selected_num >= 4
    print "1,2,3の中で選んでください>>"
    selected_num = gets.to_i
  else
    puts "#{plans[selected_num - 1][:name]}ですね。何人で行きますか？"       
  break
  end
end
selected_price = plans[selected_num - 1][:price]  

# # 人数の入力値をもらう
# print "\n人数を選んでください>>" 
# people_num = gets.to_i

# puts "\n"

# if people_num >= 5
#   puts "全員で#{people_num}名ですね。"
#   puts "5名以上なので 10% 割引となります。"
#   total_price = selected_price * people_num * 0.9

# elsif people_num >= 1
#   puts "全員で#{people_num}名ですね。通常価格です。"
#   total_price = selected_price * people_num

# else
#   puts "1名以上を入力してください"
#   total_price = 0 
# end

# puts "\n合計料金: #{total_price}円です！、ありがとうございます！"

