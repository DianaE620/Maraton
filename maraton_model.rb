require 'csv'

class Categorias

  def categorias
    array_files = ['Geografia','Ciencia']
  end

  def categoria_respuestas(categoria)
    file = categoria + '.csv'
    correctas = []

    CSV.foreach(file) do |correcta|
      correctas << correcta[4]
    end
    correctas
  end

end

class Maraton

  def preguntas(categoria)
    file = categoria + '.csv'

    array_preguntas = []

    CSV.foreach(file) do |pregunta|
      array_preguntas << [pregunta[0], pregunta[1], pregunta[2], pregunta[3], pregunta[4]]
    end
    
    array_preguntas
  end

  def verifica_respuestas(respuestas_c, respuestas_j)
    jugador = 0
    ignorancia = 0
    puntajes = []

    for i in 0..respuestas_c.length - 1
      if respuestas_c[i] == respuestas_j[i]
        jugador += 1
      else
        ignorancia += 1
      end
    end
    puntajes << jugador
    puntajes << ignorancia
  end

end # Fin maraton







# --------- Archivos de Preguntas

# def do_categoria(file)

#   CSV.open(file, 'wb') do |csv|
#     csv << ['En cual de los siguientes paises no hay ningun desierto?', 'Chile', 'Mongolia', 'Alemania', 'Alemania']
#     csv << ['Cual es el codigo internacional para Cuba?', 'CA', 'CU', 'CB', 'CU']
#     csv << ['En que pais situarias la ciudad de Cali?', 'Colombia', 'Venezuela', 'Costa Rica', 'Colombia']
#     csv << ['Cual es la capital de Suiza?', 'Berna', 'Zurich', 'Ginebra', 'Berna']
#     csv << ['Entre que dos paises esta el lago Titicaca?', 'Bolivia y Peru', 'Bolivia y Paraguay', 'Bolivia y Brasil', 'Bolivia y Peru']
#     csv << ['A que pais pertenece la isla Mujeres?', 'Mexico', 'Argentina', 'Colombia', 'Mexico']
#     csv << ['Cual es la religion mayoritaria en China?', 'Budismo', 'Taoismo', 'Cristianismo', 'Budismo']
#     csv << ['En que continente esta la India?', 'Oceania', 'America', 'Asia', 'Asia']
#     csv << ['Cual es la capital de Alemania?', 'Berlin', 'Munich', 'Frankfurt', 'Berlin']
#     csv << ['Cual es la capital de Ecuador?', 'Lima', 'Quito', 'Bogota', 'Quito']
#   end
  
# end

# do_categoria("Geografia.csv")

# def do_categoria(file)

#   CSV.open(file, 'wb') do |csv|
#     csv << ['Cual de las siguientes enfermedades ataca al higado?', 'Hepatitis', 'Diabetes', 'Cifoescoliosis', 'Hepatitis']
#     csv << ['Que es un equino?', 'Una vaca', 'Un antilope', 'Un caballo', 'Un caballo']
#     csv << ['Cual es la funcion principal del instestino grueso?', 'La absorcion de nutrientes', 'La absorcion de agua', 'La digestion quimica', 'La absorcion de agua']
#     csv << ['Que contiene el cactus llamado peyote?', 'LSD', 'Salvia', 'Mescalina', 'Mescalina']
#     csv << ['Cuantas cavidades estomacales tiene una vaca?', 'Uno', 'Dos', 'Cuatro', 'Cuatro']
#     csv << ['Con que parte del cuerpo hacen el zumbido las abejas?', 'Con las patas', 'Con las alas', 'Con la boca', 'Con las alas']
#     csv << ['Cual es el simbolo de Bromo?', 'B', 'Br', 'Bh', 'Br']
#     csv << ['Cual es el simbolo del Sodio?', 'Na', 'So', 'Li', 'Na']
#     csv << ['Que tipo de musculos realizan los movimientos voluntarios?', 'Estriados', 'Lisos', 'Gruesos', 'Estriados']
#     csv << ['Cuantos colores tenia la primera tarjeta grafica?', 'Uno', 'Dos', 'Tres', 'Dos']
#   end
  
# end

# do_categoria("Ciencia.csv")