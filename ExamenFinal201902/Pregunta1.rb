$estadios = []
$capacidades = []
$ubicaciones = []

$continentes = ["America", "Europa", "Africa", "Asia", "Oceania"]

def RegistrarEstadio
    p "Nombre del estadio: "
    estadio = gets.chomp
    $estadios<<estadio
    p "Capacidad: "
    capacidad = gets.chomp.to_i
    $capacidades<<capacidad
    p "Continente (escoge entre 1 y 5)"
    ImprimirContinentes()
    ubicacion = gets.chomp.to_i
    $ubicaciones<<ubicacion
    ImprimirRegistro()
end

def ImprimirContinentes
    for i in 0..$continentes.size - 1 
        p "#{i+1}-#{$continentes[i]}"
    end
end

def ImprimirRegistro
    for i in 0..$estadios.size-1
        p "Estadio #{i+1}:#{$estadios[i]}, #{$capacidades[i]}, #{$continentes[$ubicaciones[i]-1]}"
    end
end

def EstadiosNoContinente(continente)
    for i in 0..$ubicaciones.size-1
        if $ubicaciones[i]!=continente
            p "Estadio: #{$estadios[i]}, #{$capacidades[i]}, #{$continentes[$ubicaciones[i]-1]}"
        end
    end
end

def EstadioMenorCapacidad(continente)
    menor = 0
    indice = 0

    for i in 0..$capacidades.size-1
        if $capacidades[i]<menor and continente == $continentes[i]
            menor = $capacidades[i]
            indice = i
        end
    end
    p "Estadio: #{$estadios[indice]}, #{$capacidades[indice]}, #{$continentes[$ubicaciones[indice]-1]}"
end

def main
    opc = 1
    while opc != 0
        p "1. Registrar un estadio"
        p "2. Estadios que no estan en un continente determinado"
        p "3. Estadio con menor capacidad"
        p "0. Cerrar"
        opc = gets.chomp.to_i

        case opc
        when 1
            RegistrarEstadio()
        when 2
            p "Escoge un continente: "
            ImprimirContinentes()
            continente = gets.chomp.to_i
            EstadiosNoContinente(continente)
        when 3
            p "Escoge un continente: "
            ImprimirContinentes()
            continente = gets.chomp.to_i
            EstadioMenorCapacidad(continente)
        else
            p "Muchas gracias" 
        end
        p "----------"
    end
end

main()
