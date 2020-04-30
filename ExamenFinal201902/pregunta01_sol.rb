def noSonDeContinente(continentes,continente) 
  contador = 0
  for i in 0..continentes.size-1
    if continente != continentes[i]
      contador =  contador + 1
    end
  end
  return contador
end

def estadiosPorContinente(estadios,continentes,continente)
  miarreglo = []
  for i in 0..continentes.size-1
    if continente == continentes[i]
      miarreglo.push(estadios[i])
    end
  end
  return miarreglo
end

def estadioDeMenorCapacidad(estadios,capacidades,continentes,continente)

  capacidad = 200000
  indicedeCapacidadMenor = 0
  for i in 0..capacidades.size-1 
    if capacidad > capacidades[i] and continentes[i] == continente
      capacidad =  capacidades[i]
      indicedeCapacidadMenor = i
    end
  end
  return estadios[indicedeCapacidadMenor]
end

#--- zona de test ----

def test_noSonDeContinente
  print validate(4,noSonDeContinente(@continente1,"Europa"))
  print validate(3,noSonDeContinente(@continente2,"America del Sur"))
end

def test_estadiosPorContinente
  print validate(["Rose Bowl", "Azteca"],estadiosPorContinente(@estadio1,@continente1,"America del Norte"))
  print validate(["Soccer City"],estadiosPorContinente(@estadio2,@continente2,"Africa"))
end

def test_estadioDeMenorCapacidad
  print validate("Rose Bowl",estadioDeMenorCapacidad(@estadio1,@capacidad1,@continente1,"America del Norte"))
  print validate("Monumental River",estadioDeMenorCapacidad(@estadio2,@capacidad2,@continente2,"America del Sur"))
end

def validate (expected, value)
 expected == value ? "." : "F" 
end

def test

  @estadio1 = ["Morumbi","Camp Nou","Rose Bowl","Monumental de la U","Azteca"]
  @capacidad1 = [66795,99354,92542,80093,105064]
  @continente1 = ["America del Sur","Europa","America del Norte","America del Sur","America del Norte"]

  @estadio2 = ["Wembley","Monumental River","Salt Lake Stadium","Maracana","Soccer City"]
  @capacidad2 = [90000,66266,135000,78838,94700]
  @continente2 = ["Europa","America del Sur","Asia","America del Sur","Africa"]
      

  puts "Test de prueba del programa"
  puts "---------------------------"
  puts test_noSonDeContinente
  puts test_estadiosPorContinente
  puts test_estadioDeMenorCapacidad
  puts " "
end
test