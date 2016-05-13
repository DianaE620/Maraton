require_relative 'maraton_model.rb'
require_relative 'maraton_view.rb'

class MainController

  def initialize(argumentos)
    @view = View.new
    @maraton = Maraton.new
    @categorias = Categorias.new
    opcion_usuario(argumentos)
  end

  def opcion_usuario(argumentos)
    if argumentos[0] == "categories"
      view_categories
    elsif argumentos[0] == "play"
      juega_maraton
    end
  end

  def view_categories
    @view.lista_categorias(@categorias.categorias)
  end

  def juega_maraton
    categoria = @view.pregunta_categoria
    respuestas = @categorias.categoria_respuestas(categoria)
    array = @maraton.preguntas(categoria)
    respuestas_jugador = @view.pregunta_jugador(array)
    correctas = @maraton.verifica_respuestas(respuestas, respuestas_jugador)
    @view.ganador(correctas)
  end


end


MainController.new(ARGV)