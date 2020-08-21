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

# loop if 条件分岐
loop do   
  if selected_num >= 4 || selected_num <= 0  # ||演算子を使い左か右の条件式を満足したらtrueになります。
    # これでselected_numが1,2,3ではない場合もう一度選んでもらいます。
    print "1,2,3の中で選んでください>>"
    selected_num = gets.to_i
  else
    puts "#{plans[selected_num - 1][:name]}ですね。何人で行きますか？"       
  break
  end
end

# 人数の入力値をもらう
print "\n人数を選んでください>>"
people_num = gets.to_i
puts "\n"

# 人数によって条件分岐
loop do
  if people_num <= 0 # breakがないループパート
    print "1名以上を入力してください>>"
    people_num = gets.to_i
  elsif　
    # 今度は&&演算子を使って 1 <= people_num <= 4 条件を作りました。
    people_num >= 1 && people_num <= 4 
    puts "全員で#{people_num}名ですね。通常価格です。"
  break    
  else
    #残りの条件は5名以上になります。
    puts "全員で#{people_num}名ですね。"
    puts "5名以上なので★ 10%★ 割引となります。"    
  break    
  end
end
# これでpeople_numが決まりました。
# 計算の時間です。
selected_price = plans[selected_num - 1][:price]  # 選択した旅行の価格

# 人数によって違う出力を出しました。
if people_num <= 4
  total_price = selected_price * people_num
  puts "\n合計料金: #{total_price}円です！、ありがとうございます！"
else #5名以上の場合 
  total_price_10per_discount = selected_price * people_num * 0.9
  puts "\n合計料金: 10%割引して#{total_price_10per_discount}円です！、ありがとうございます！"
end
     
 
