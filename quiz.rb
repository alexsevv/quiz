current_path = File.dirname(__FILE__)

questions_path = current_path + "/data/questions.txt"
answers_path = current_path + "/data/answers.txt"

unless File.exist?(answers_path) && File.exist?(questions_path)
  abort 'Один из файлов не найден!'
end

file_questions = File.new(questions_path, "r:UTF-8")
questions = file_questions.readlines
file_questions.close

file_answers = File.new(answers_path, "r:UTF-8")
answers = file_answers.readlines
file_answers.close

number_questions = 0
correct_answers = 0
incorrect_answers = 0

while number_questions < answers.size
  puts questions[number_questions]
  say = gets.to_i

  if say == answers[number_questions].to_i
    puts "Верный ответ"
    correct_answers += 1
  else
    puts "Неправильно. Правильный ответ: #{answers[number_questions]}"
    incorrect_answers +=1
  end
  number_questions += 1
end

puts
puts "Ваш результат:"
puts "#{correct_answers} правильных ответов"
puts "#{incorrect_answers} неправильных ответов"