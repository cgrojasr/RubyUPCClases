matriz = []
estadio1 = ["Camp Nou", 80000, "Europa"]
estadio2 = ["Maracana", 75000, "America"]
estadio3 = ["Azteca", 90000, "America"]
estadio4 = ["Yokohama Stadium", 60000, "Asia"]
estadio5 = ["Johannesburgo", 100000, "Africa"]
estadio6 = ["Allianz Arena", 65000, "Europa"]

matriz<<estadio1
matriz<<estadio2
matriz<<estadio3
matriz<<estadio4
matriz<<estadio5
matriz<<estadio6

def pregunta1 (matriz)
    puts "Ingresar continente"
    continente = gets.chomp
    cont = 0

    for i in 0..matriz.size - 1
        if matriz[i][2] != continente
            cont += 1
            puts matriz[i]
        end
    end
    p cont 
end

def pregunta2 (matriz)
    puts "Ingresar continente"
    continente = gets.chomp

    for i in 0..matriz.size - 1
        if matriz[i][2] == continente
            puts matriz[i]
        end
    end
end

def pregunta3 (matriz)
    puts "Ingresar continente"
    continente = gets.chomp
    menor = 10000000 
    indice = -1

    for i in 0..matriz.size - 1
        if matriz[i][1] < menor && matriz[i][2] == continente
            menor = matriz[i][1]
            indice = i #indice del estadio de menor capacidad
        end
    end

    p matriz[indice]
end

pregunta3(matriz)
