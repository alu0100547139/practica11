
class Quiz
attr_accessor :examen, :preguntas, :respuestas


	def initialize(preg, &bloque)
		@examen = preg
		@preguntas = []
		@respuestas = []
		instance_eval &bloque
	end

	def pregunta(preg , resp = {} )
		@preguntas << preg
		@respuestas.push(resp)
	end

	def to_s
		salida = "------------------- \n"
		salida << "#{@examen} \n"
		salida << "-------------------\n"
		it = 0
		it1 = 1
		while ( @preguntas[it] != nil)
			salida << "|--- #{@preguntas[it]} ---| \n"
			salida << "#{it1} #{@respuestas[it][:bien]} \n"
			salida << "#{it1+1} #{@respuestas[it][:mal0]}\n"
			salida << "#{it1+2} #{@respuestas[it][:mal1]}\n"
			salida << "#{it1+3} #{@respuestas[it][:mal2]}\n \n"
			it+=1		
		
		end
		
	salida
	
	end
			
	
			#@respuestas[it].each_with_index do | preg,index |
			#	salida << "#{index +1 } #{preg[:bien]}"
			#	salida << "#{index +1 } #{preg[:mal0]}"
			#	salida << "#{index +1 } #{preg[:mal1]}"
			#	salida << "#{index +1 } #{preg[:mal2]}"
			#end
			
		
		

end

	quiz = Quiz.new("|  Examen de LPP  |"){
		pregunta "¿Cuantos argumentos de tipo bloque puede recibir un metodo ?" ,
		:bien => "1.",
		:mal0 => "2.",
		:mal1 => "muchos.",
		:mal2 => "los que defina el usuario."
		
		pregunta "¿ En ruby los bloques son objetos que contienen codigo?",
		:bien => "Cierto.",
		:mal0 => "Falso."
		
	}	

puts quiz
