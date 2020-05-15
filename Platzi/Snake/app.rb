require_relative "View/ruby2d"
require_relative "Model/state"
require_relative "Actions/actions"

class App
    def initialize
      @state = Model::initial_state
    end

    def start
        view = View::Ruby2dView.new
        Thread.new{init_timer(view)}
        view.start(@state)
    end

    def init_timer(view)
        loop do
            @state = Actions::move_snake(@state)
            view.render(@state)
            sleep 0.5
            #trigger movements
        end
    end
end

app = App.new
app.start