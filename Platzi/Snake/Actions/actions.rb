
module Actions
    def self.move_snake(state)
        next_direction = state.curr_direction
        next_position = calc_next_position(state)
        #verificar que la siguiente casilla sea valida
        if next_position_is_valid?(state, next_position)
            move_snake_to(state, next_position)
        else
            end_game(state)
        end
    end

    def self.change_direction(state, direction)
        if next_direction_is_valid(state, direction)
            state.curr_direction = direction
        else
            p "Invalid direction"
        end
        state
    end

    private
    def self.calc_next_position(state)
        curr_postition = state.snake.positions.first
        case state.curr_direction
            when Model::Direction::UP 
                #decrementar la fila
                return Model::Coord.new(curr_postition.row - 1, curr_postition.col)
            when Model::Direction::RIGHT
                #incrementar la columna
                return Model::Coord.new(curr_postition.row, curr_postition.col + 1)
            when Model::Direction::DOWN 
                #incrementar la fila
                return Model::Coord.new(curr_postition.row + 1, curr_postition.col)
            when Model::Direction::LEFT
                # decrementar la columna
                return Model::Coord.new(curr_postition.row, curr_postition.col - 1)
        end
    end

    def self.next_position_is_valid?(state, next_position)
        #verificar que este en la grilla
        is_invalid = ((next_position.row >= state.grid.rows || 
            next_position.row < 0) || 
            (next_position.row >= state.grid.rows || 
                next_position.row < 0))

        return false if is_invalid
        #verificar que no este super poniendo a la serpiente
        return !(state.snake.positions.include? next_position)
    end

    def self.move_snake_to(state, next_position)
        #
        new_postions = [next_position] + state.snake.positions[0...-1]
        state.snake.positions = new_postions
        state
    end

    def self.end_game(state)
        state.game_over = true
        state
    end

    def self.next_direction_is_valid(state, direction)
        case state.curr_direction
        when Model::Direction::UP 
            return true if direction != Model::Direction::DOWN
        when Model::Direction::DOWN 
            return true if direction != Model::Direction::UP
        when Model::Direction::RIGHT 
            return true if direction != Model::Direction::LEFT
        when Model::Direction::LEFT 
            return true if direction != Model::Direction::RIGHT
        end

        return false 
    end
end

