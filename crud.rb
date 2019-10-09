animals = {
  dog: 3,
  cat: 5,
  rabbit: 2,
}

puts "あなたの行いたい動作を教えてください"

puts "(create),(read),(update),(delete)"

select = gets.chomp

case select
  when "create"
    puts "追加したい動物種を入力してください"
    species = gets.chomp
  if animals [species.to_sym] .nil?
      puts "追加したい頭数を入力してください"
      numbers = gets.chomp
      animals[species.to_sym] = numbers.to_i
      puts "#{species}の追加が完了しました"
  else
      puts "すでにその動物種は存在しています"
    end
  when "update"
    puts "変更したい動物種を選んでください"
    species = gets.chomp
    if animals[species.to_sym] .nil?
      puts "そのような動物種はありません"
    else
      puts "変更後の頭数を入力してください"
      numbers = gets.chomp
      animals[species.to_sym] = numbers.to_i
      puts "#{species}の頭数が#{numbers}に変更されました"
    end
  when "delete"
    puts "削除したい動物種を選んでください"
    species = gets.chomp
    if animals[species.to_sym].nil?
      puts "そのような動物種はありません"
    else
      animals.delete(species.to_sym)
      puts "#{species}が削除されました"
    end
  when "read"
    animals.each do |key,value|
      puts "動物種:#{key},頭数:#{value}"
  end
else
  puts "正しい操作を選んでください"
end

puts animals
