estadios = []
estadio1 = ["Maracana", 80000, "America"]
estadio2 = ["Azteca", 90000, "America"]
estadio3 = ["Allianz Arena", 75000, "Europa"]
estadio4 = ["Yokahama Stadium", 60000, "Asia"]
estadio5 = ["Soccer Stadium", 100000,"Africa"]
estadio6 = ["Bernabeu", 85000,"Europa"]

estadios << estadio1
estadios << estadio2
estadios << estadio3
estadios << estadio4
estadios << estadio5
estadios << estadio6

def pregunta1a(estadios, continente)
    #p "Ingrese el nombre de un continente"
    #continente = gets.chomp    
    
    cantidad = 0
    for i in 0..estadios.size - 1
        if estadios[i][2] != continente
            cantidad += 1
        end
    end
    p cantidad
end

def pregunta1b(estadios)
    p "Ingrese el nombre de un continente"
    continente = gets.chomp    
    
    cantidad = 0
    for i in 0..estadios.size - 1
        if estadios[i][2] != continente
            cantidad += 1
        end
    end
    p cantidad
end

def pregunta2a(estadios, continente)
    for i in 0..estadios.size - 1
        if estadios[i][2] == continente
            puts estadios[i][0]
        end
    end
end

def pregunta2b(estadios)
    p "Ingrese el nombre de un continente"
    continente = gets.chomp    

    for i in 0..estadios.size - 1
        if estadios[i][2] == continente
            puts estadios[i][0]
        end
    end
end

def pregunta3a(estadios, continente)
    menor = 10000000
    indice = -1
    for i in 0..estadios.size - 1
        if estadios[i][2] == continente
            if estadios[i][1] <= menor
                menor = estadios[i][1]
                indice = i
            end
        end
    end

    p estadios[indice]
end

def pregunta3b(estadios)
    p "Ingrese el nombre de un continente"
    continente = gets.chomp    

    menor = 10000000
    indice = -1
    for i in 0..estadios.size - 1
        if estadios[i][2] == continente
            if estadios[i][1] <= menor
                menor = estadios[i][1]
                indice = i
            end
        end
    end

    p estadios[indice]
end

pregunta3b(estadios)

