require "csv"

puts "1(新規でメモを作成) 2(既存のメモ編集する)"

file_name = gets.chomp

if file_name == "1"
  puts "拡張子を除いたファイルを入力してください"
  file_name = gets.chomp
  p 'メモしたい内容を記入してください'
  p '完了したらCtrl + Dを押してください'
  CSV.open("#{file_name}.csv","w") do |memo|
    content = readlines
    memo << content
  end
  
  elsif file_name == "2"
    puts "編集したいファイルを入力してください"
    file_name = gets.chomp
    CSV.open("#{file_name}.csv","w") do |csv|
      csv << ["2"]
      csv << ["#{file_name}"]
    end
    
    str = memo_
    puts "編集内容を入力してください"
    puts "完了したらCtrl + Dを押してください"
    memo_type = $stdin.read
    CSV.open("#{str}.csv","a") do |csv|
      csv << ["#{memo_type}"]
    end
    
  else
    puts "エラー"
  end