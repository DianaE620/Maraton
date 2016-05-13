class View

  def lista_categorias(array)
    num = 1
    array.each do |categoria| 
      puts "#{num}.#{categoria}"
      num += 1
    end
  end

  def pregunta_categoria
    puts "Que categoria quieres jugar?"
    categoria = STDIN.gets.chomp.capitalize!
  end

  def pregunta_jugador(array)
    respuestas = []
    for i in 0...array.length
      puts "#{array[i][0]}"
      puts "#{array[i][1]}"
      puts "#{array[i][2]}"
      puts "#{array[i][3]}"
      respuestas << respuesta = STDIN.gets.chomp.capitalize!
    end
    respuestas
  end

  def ganador(puntajes)
    if puntajes[0] > puntajes[1]
      puts "Eres el ganador tu puntaje fue de #{puntajes[0]} la ignorancia tuvo #{puntajes[1]}"
    else
      puts "La ignorancia gana tu puntaje fue de #{puntajes[0]} la ignorancia tuvo #{puntajes[1]}"
    end
  end



end