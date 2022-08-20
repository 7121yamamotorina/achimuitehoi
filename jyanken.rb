def janken
puts "[0]:(グー)[1]:(チョキ)[2]:(パー)[3]:(戦わない)"

player_hand = gets.to_i
program_hand = rand(3)
jankens = ["グー","チョキ","パー"]
if player_hand == 3
  
  puts "戦わないを選択されたので、ゲームを終了します"
elsif player_hand == program_hand
  puts "あなたの手:#{jankens[player_hand]},プログラムが選んだ手:#{jankens[program_hand]}"
  puts" あいこで"
  return true
elsif (player_hand == 0 && program_hand == 1) ||
      (player_hand == 1 && program_hand == 2) ||
      (player_hand == 2 && program_hand == 0)
      puts "あなたの手:#{jankens[player_hand]},プログラムが選んだ手:#{jankens[program_hand]}"
      puts "あなたの勝ちです"
      @janken_judge = "win"
      achimuite
     
      
else 
  puts "あなたの手:#{jankens[player_hand]},プログラムが選んだ手:#{jankens[program_hand]}"
  puts "あなたの負けです"
  @janken_judge = "lose"
  achimuite
  
end
end


def achimuite
  puts "あっち向いて・・・"
  puts "[0]:(上)[1]:(下)[2]:(右)[3]:(左)"
  player_face = gets.to_i
  program_face = rand(4)
  achimuites = ["上","下","右","左"]
  if (player_face == program_face) && (@janken_judge == "win")
    puts "あなたの指差した方向:#{achimuites[player_face]},プログラムが向いた方向:#{achimuites[program_face]}"
    puts "あなたの勝ちです"
  elsif (player_face == program_face) && (@janken_judge == "lose")
    puts "プログラムが指差した方向:#{achimuites[program_face]},あなたが向いた方向:#{achimuites[player_face]}"
    puts "あなたの負けです"
  elsif (player_face != program_face) && (@janken_judge == "win")
    puts "あなたの指差した方向:#{achimuites[player_face]},プログラムが向いた方向:#{achimuites[program_face]}"
    puts "コンピュータもなかなかやりますね！"
    puts "もう一度、じゃんけんから"
      next_game = true
  else 
    puts "プログラムが指差した方向:#{achimuites[program_face]},あなたが向いた方向:#{achimuites[player_face]}"
    puts "あなたもなかなかやりますね！"
    puts "もう一度、じゃんけんから"
      next_game = true
    end
  end
  next_game = true
while next_game
  next_game = janken
end