class Question
  attr_accessor :q, :a
  def initialize(q, a)
    @q = q
    @a = a
  end
end

preguntas = ["Cuál es la capital de Colombia?", "Cuál es la capital de Canada?", "Cuál es la capital de Francia?", "Cuál es la capital de India?", "Cuál es la capital de España?"]
answers = ["Bogota", "Ottawa", "Paris", "Nueva Delhi", "Madrid" ]

questions = [
  Question.new(preguntas[0], answers[0]),
  Question.new(preguntas[1], answers[1]),
  Question.new(preguntas[2], answers[2]),
  Question.new(preguntas[3], answers[3]),
  Question.new(preguntas[4], answers[4])
]

def test(questions)
  answer = ""
  for question in questions
    while answer != question.a
      puts question.q
      print "Respuesta: "
      answer = gets.chomp()
      if answer == question.a
        puts "Respuesta correcta."
      else
        puts "Respuesta incorrecta, intenta de nuevo."
      end
    end
  end
  puts "Felicitaciones!!! Eres un experto en capitales."
end

puts "Bienvenido al reto 5 de capitales. ¿Cual es tu nombre?"
name = gets.chomp
puts "Hola #{name}. Para jugar solo tienes que ingresar la capital del país."
puts "Ganas cuando tengas 5 preguntas correctas."
puts "Ej: ¿Cuál es la capital de Venezuela? Respuesta: Caracas"
test(questions)
