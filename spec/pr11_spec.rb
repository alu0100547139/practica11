require "/home/ubuntu/workspace/LPP1415/practica11/lib/practica11/quiz.rb"
require 'test/unit'

describe Quiz do
   
   before :each do
       @quizz= Quiz.new("EXAMEN2"){
            pregunta "Pregunta1", {
                :bien => "0",
                :mal0 => "1",
                :mal1 => "2",
                :mal2 => "3"
            }
       }
   end
    
    it " Existe un metodo de la clase Quiz" do
        expect(@quizz.class).to eq(Quiz)
    end
    
    it " Existen respuestas" do 
        expect(@quizz.examen).not_to eq(nil)
   end
   
   it " Existen preguntas "do       
       expect(@quizz.preguntas).not_to eq(nil)
   end
   
end