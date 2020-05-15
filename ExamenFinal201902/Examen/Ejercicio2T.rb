departamento1 = ["Lima", "Historia", 2500, "Literatura", 1350]
departamento2 = ["Piura", "Pintura", 1200, "Historia", 2200]
departamento3 = ["Ancash", "Matematica", 860, "Quimica", 500]
departamento4 = ["Libertad", "Musica", 680, "Danza", 560]
departamento5 = ["Chiclayo", "Literatura", 560, "Quimica", 480]
departamento6 = ["Ica", "Historia", 450, "Historia", 340]
departamento7 = ["Tacna", "Fisica", 250, "Geometria", 220]
departamento8 = ["Moquegua", "Literatura", 300, "Matematicas", 350]

matriz = []
matriz << departamento1
matriz << departamento2
matriz << departamento3
matriz << departamento4
matriz << departamento5
matriz << departamento6
matriz << departamento7
matriz << departamento8

def Pregunta1(matriz)
    p "Ingrese departamento"
    departamento = gets.chomp
    p "Ingrese el tipo de requerimiento"
    requerimiento = gets.chomp

    for i in 0..matriz.size - 1
        if matriz[i][0] == departamento
            depa_result = matriz[i]
            break
        end
    end

    case requerimiento
    when "Varones" then p depa_result[1]
    when "cant_Varon" then p depa_result[2]
    when "Mujeres" then p depa_result[3]
    when "cant_Mujer" then p depa_result[4]
    end
end

def Pregunta2(matriz)
    p "Ingrese materia"
    materia = gets.chomp
    p "Sexo"
    sexo = gets.chomp
    suma = 0

    for i in 0..matriz.size - 1
        case sexo
        when "Mujer" then 
            if materia == matriz[i][3]
                suma += matriz[i][4] 
            end
        when "Varon" then 
            if materia == matriz[i][1]
                suma += matriz[i][2] 
            end
        end
    end
    p suma
end

def Pregunta3(matriz)
    resultado = []

    for i in 0..matriz.size - 1
        suma = 0
        suma = matriz[i][2] + matriz[i][4]
        resultado << [matriz[i][0], suma]
    end

    p resultado
end

# {notas = [15, 17.5, 20, 13, 19, 12.5, 10]

# cont = 0
# for i in 0..notas.size - 1
#     if notas[i] >= 13
#         cont += 1
#     end
# end
# p cont}

# cadena = "PROD-5"
# p cadena[5]
