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

question_number = 0
correct_answers = 0
incorrect_answers = 0

while question_number < answers.size
  puts questions[question_number]
  say = gets

  if say == answers[question_number]
    puts "Верный ответ"
    correct_answers += 1
  else
    puts "Неправильно. Правильный ответ: #{answers[question_number]}"
    incorrect_answers += 1
  end
  question_number += 1
end

puts
puts "Ваш результат:"
puts "#{correct_answers} правильных ответов"
puts "#{incorrect_answers} неправильных ответов"