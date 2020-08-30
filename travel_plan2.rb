def how_many_people(selected_price)
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
      puts "\n合計料金: #{selected_price * people_num}円です！、ありがとうございます！"
      break
    else
      #残りの条件は5名以上になります。
      puts "全員で#{people_num}名ですね。"
      puts "5名以上なので★ 10%★ 割引となります。"      
      puts "\n合計料金: 10%割引して#{selected_price * people_num * 0.9}円です！、ありがとうございます！"
      break
    end
  end
end


def main_process
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

  loop do   
    # selected_numが1,2,3ではない場合もう一度選んでもらいます。
    if selected_num >= 4 || selected_num <= 0  
      print "1,2,3の中で選んでください>>"
      selected_num = gets.to_i
    else
      puts "#{plans.keys[selected_num - 1]}ですね。何人で行きますか？"    
    break
    end
  end
  
  selected_price = plans.values[selected_num - 1]  # 選択した旅行の価格
  how_many_people(selected_price) # 価格を引数として使用
end
main_process　#実行