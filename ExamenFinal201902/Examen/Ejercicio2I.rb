departamentos = []
departamentos << ["Lima", "Historia", 2500, "Literatura", 1350]
departamento2 = ["Piura", "Pintura", 1200, "Historia", 2200]
departamento3 = ["Ancash", "Matematicas", 860, "Quimica", 500]
departamento4 = ["La Libertad", "Musica", 680, "Danza", 560]
departamento5 = ["Chiclayo", "Literatura", 560, "Quimica", 480]
departamento6 = ["Ica", "Historia", 450, "Historia", 340]
departamento7 = ["Tacna", "Fisica", 250, "Geometria", 220]
departamento8 = ["Moquegua", "Literatura", 300, "Matematicas", 350]

departamentos << departamento2
departamentos << departamento3
departamentos << departamento4
departamentos << departamento5
departamentos << departamento6
departamentos << departamento7
departamentos << departamento8

def pregunta1(departamentos, departamento, requerimiento)
    for i in 0..departamentos.size - 1
        if departamentos[i][0] == departamento
            case requerimiento
            when "Varones" then p departamentos[i][1]
            when "cant_Varon" then p departamentos[i][2]
            when "Mujeres" then puts departamentos[i][3]
            when "cant_Mujer" then puts departamentos[i][4]
            end
            #break #esto ayuda a finalizar el for cuando se encuentra el resultado (Recomendable en cantidad de datos muy alta)
        end
    end
end

def pregunta2(departamentos, materia, sexo)
    suma = 0
    for i in 0..departamentos.size - 1
        case sexo 
        when "Mujer" then 
            if departamentos[i][3] == materia 
                suma = suma + departamentos[i][4]
            end
        when "Varon" then 
            if departamentos[i][1] == materia 
                suma = suma + departamentos[i][2]
            end
        end
    end
    p suma
end

def pregunta3(departamentos)
    for i in 0..departamentos.size - 1
        #p "#{departamentos[i][0]}: #{departamentos[i][2] + departamentos[i][4]}"
        p departamentos[i][0] + ": " + (departamentos[i][2] + departamentos[i][4]).to_s
    end
end

pregunta2(departamentos, "Quimica", "Mujer")

