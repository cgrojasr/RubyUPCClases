puts 2**3
f = 1.2
puts f.class

puts 4/5.0

nombre = "Christian Rojas"
p nombre.object_id

color = :rojo
color2 = :rojo

p color.object_id
p color2.object_id
p color.class

letras = ["a","b","c","x","y","z"]
p letras.count{|x| x=="a"}
numeros = [1,2,3,4,5,6,7]
p numeros.count{|x| x.even?}
p numeros.map{|x| x*2}
p numeros.select{|x| x.odd?}
p numeros.min
p numeros.sum
p numeros.map{|x|x.class}
cadena = "hola mundo"
p cadena.split(" ")
p cadena.split(" ").map{|x| x.upcase}.join("\n") 

