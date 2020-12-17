
puts <<~TEXT
       旅行プランを選択して下さい。

       1. 沖縄旅行（10000円）
       2. 北海道旅行（20000円）
       3. 九州旅行（15000円）

     TEXT

  while true
    print "プランの番号を選択 > "
    plan_num = gets.to_i
    break if  (1..3).include?(plan_num)
    puts "1〜3の番号を入力して下さい。"
  end

  case plan_num
    when 1
    place = "沖縄"
    price = 10000
    when 2
    place = "北海道"
    price = 20000
    when 3
    place = "九州"
    price = 15000
  end

  puts "#{place}旅行ですね。"
  
  while true
    print "何名で予約されますか？ > "
    people_num = gets.to_i
    break if  plan_num >= 0
    puts "1以上を入力してください。"
  end



  total_price = (price * people_num).floor
  discounted_total_price = (price * people_num * 0.9).floor

  if people_num >= 5
    puts "#{people_num}名ですね。"
    puts "5人以上なので10%割引になります。"
    puts "合計金額は#{discounted_total_price}円になります。"
  else
    puts "#{people_num}名ですね。"
    puts "合計金額は#{total_price}円になります。"
  end


  
 






  

