Competencia = []
Competencia << 1.5 
Competencia << 3.0
Competencia << 2.5 
Competencia << 3.5 

# def pregunta1(matriz)
#     p  matriz.sum/matriz.size
# end

def pregunta1(matriz)
    suma = 0
    for i in 0..matriz.size - 1
        suma += matriz[i]
        p i
        p suma
    end
    p suma/matriz.size
end

saltolargo = []
saltolargo << 9.0
saltolargo << 8.75
saltolargo << 7.2
saltolargo << 8.80

def pregunta2(matriz)
    p matriz.select{|item| item>=8.75}.size
    #p matriz.map{|item| item>=8.75}.select{|x| x}.size
end

# def pregunta2(matriz)
#     cant = 0
#     for i in 0..matriz.size - 1
#         if matriz[i] >= 8.75
#             cant += 1
#         end
#     end
#     p cant
# end


atleta1 = "LIM0103020134"
atleta2 = "BOG0104010134"
atleta3 = "CMX0105030134"
#LIM0103020134
#0123456789012

marathon = []
marathon << atleta1
marathon << atleta2
marathon << atleta3

def pregunta3(codigo)
    p departamento = codigo[0, 3] #0 hace referencia a la posicion y 3 es la cantidad de caracteres que necesito obtener
    p id = codigo[3, 4]
    p horas = codigo[7, 2].to_i
    p minutos = codigo[9, 2].to_i
    p segundos = codigo[11, 2].to_i

    total_tiempo = segundos + minutos*60 + horas*60*60
    p total_tiempo
    return total_tiempo
end

def pregunta4(arreglo)
    menor = pregunta3(arreglo[0])
    for i in 1..arreglo.size - 1
        tiempo = pregunta3(arreglo[i])
        if tiempo < menor
            menor = tiempo
        end
    end
    return menor
end

# pregunta3(atleta1)
# pregunta3(atleta2)
# pregunta3(atleta3)

p pregunta4(marathon)