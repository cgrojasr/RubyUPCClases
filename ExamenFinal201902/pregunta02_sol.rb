def pregunta1(requerimiento, departamento, departamentos, varones, cant_varones, mujeres, cant_mujeres)
   rpta = ""
   for i in 0..departamentos.size-1
      if departamento == departamentos[i]
         if requerimiento == "Varones"
             rpta = varones[i]
         elsif  requerimiento == "Mujeres"
             rpta = mujeres[i] 
         elsif  requerimiento == "cant_Varon"
             rpta = cant_varones[i].to_s
         elsif  requerimiento == "cant_Mujer"
             rpta = cant_mujeres[i].to_s
         end
      end   
   end
   #puts rpta
   return rpta
end

def pregunta2(materia, sexo, varones, cant_varones, mujeres, cant_mujeres)
  suma = 0
  if sexo == "Mujer"
     for i in 0..mujeres.size-1
         if mujeres[i] == materia
            suma = suma + cant_mujeres[i]
         end 
     end
  elsif sexo == "Varon"
     for i in 0..varones.size-1
         if varones[i] == materia
            suma = suma + cant_varones[i]
         end 
     end   
  end
  #puts suma
  return suma    
end

def pregunta3(cant_varones, cant_mujeres)
   arr = []
   for i in 0..cant_varones.size-1
      arr.push(cant_varones[i] + cant_mujeres[i])
   end
   #puts arr
   return arr 
end

#--- zona de test ----

def test_Pregunta1
  print validate("Matematicas", pregunta1("Varones"   , "Ancash", @dpto, @varones, @cant_varones, @mujeres, @cant_mujeres))
  print validate("Quimica"    , pregunta1("Mujeres"   , "Ancash", @dpto, @varones, @cant_varones, @mujeres, @cant_mujeres))
  print validate("860"        , pregunta1("cant_Varon", "Ancash", @dpto, @varones, @cant_varones, @mujeres, @cant_mujeres))
  print validate("500"        , pregunta1("cant_Mujer", "Ancash", @dpto, @varones, @cant_varones, @mujeres, @cant_mujeres) )     
end

def test_Pregunta2
  print validate(860, pregunta2("Matematicas", "Varon", @varones, @cant_varones, @mujeres, @cant_mujeres))
  print validate(350, pregunta2("Matematicas", "Mujer", @varones, @cant_varones, @mujeres, @cant_mujeres))  
  print validate(860, pregunta2("Literatura" , "Varon", @varones, @cant_varones, @mujeres, @cant_mujeres))
  print validate(980, pregunta2("Quimica"    , "Mujer", @varones, @cant_varones, @mujeres, @cant_mujeres))    
end

def test_Pregunta3
  print validate([3850,3400,1360,1240,1040,790,470,650], pregunta3(@cant_varones, @cant_mujeres))
  
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
  puts "Test de pregunta 2"
  puts "---------------------------"
  test_Pregunta1
  puts " "
  test_Pregunta2
  puts " "
  test_Pregunta3
  puts " "
end

@dpto        = ["Lima"      ,"Piura"   ,"Ancash"     ,"La Libertad","Chiclayo"  ,"Ica"     ,"Tacna"    ,"Moquegua"   ]
@varones     = ["Historia"  ,"Pintura" ,"Matematicas","Musica"     ,"Literatura","Historia","Fisica"   ,"Literatura" ]
@cant_varones= [2500        ,1200      ,860          ,680          ,560         ,450       ,250        ,300          ]
@mujeres     = ["Literatura","Historia","Quimica"    ,"Danza"      ,"Quimica"   ,"Historia","Geometria","Matematicas"]
@cant_mujeres= [1350        ,2200      ,500          ,560          ,480         ,340       ,220        ,350          ]

test