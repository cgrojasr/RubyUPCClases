require_relative "View/ruby2d"
require_relative "Model/state"
require_relative "Actions/actions"

class App
    def initialize
      @state = Model::initial_state
    end

    def start
        @view = View::Ruby2dView.new(self)
        timer_thread = Thread.new{init_timer(@view)}
        @view.start(@state)
        timer_thread.join
    end

    def init_timer(view)
        loop do
            if @state.game_over
                p "Juego finalizado"
                p "Puntaje: #{@state.snake.positions.count}"
                break
            end
            @state = Actions::move_snake(@state)
            @view.render(@state)
            sleep 0.5
            #trigger movements
        end
    end

    def send_action(action, params)
        #action llama al metodo change_direction y se envian los parametros en un arreglo
        new_state = Actions.send(action, @state, params)
        #hash es un identificador unico, si el estado no cambia entonces no estamos haciendo un render por cada dato que nos mandan 
        if new_state.hash != @state
            @state = new_state
            @view.render(@state)
        end
    end
end

app = App.new
app.start