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

p nombre.length

#RANGOS : Es util para realizar arreglo e iteraciones
rango1 = (1..6) #RANGOS INCLUSIVOS
p rango1.to_a
rango2 = (1...6) #RANGOS EXCLUSIVOS
p rango2.to_a
p rango1.include? 3
rango3 = ("a".."f") #RANGOS CON LETRAS
p rango3.to_a

#REGEX (HAY UN CURSO EXCLUSIVO)
regex1 = /\w+@gmail.com/
p "cgrojasr@gmail.com".match regex1
regex2 = /\d+/
p "123123".match regex2

#PROC Y LAMBDAS
saludar = Proc.new{|nombre1| p "Hola #{nombre1}"}
saludar.call("Christian")

class Transacction
    def exec
        p "ejecutando transaccion"
        if block_given?
            yield
        end
    end 
end

tx = Transacction.new
tx.exec{p "Despues de la ejecucion"}

#POO
class Persona < Struct.new(:name, :age)
    #attr_accessor :name, :age #Esta es una forma de no hacer getters and setters

    def self.suggested_name
        ["Pablo", "Rodrigo", "Marco"]
    end

    #Si declaramos Struc ya no necesitamos inicializar
    # def initialize(name, age)
    #   @name = name
    #   @age = age
    # end

    # def name
    #     @name
    # end

    # def age
    #     @age
    # end

    # def name=(name)
    #     @name = name 
    #     self
    # end

    # def age=(age)
    #     @age = age 
    #     self
    # end
end

persona = Persona.new("Christian", 36)
p persona.name
p Persona.suggested_name

#MODULOS
module Model

end

module Reports
    class ExcelReporter
        def Build
            p "Generar reporte excel"
        end
    end

    class MailReporter
    end
end

excel_report = Reports::ExcelReporter.new
excel_report.Build

#BUNDLER Y GEMAS
require 'faker'
p Faker::Name.name
#ejecurar con bundle exec ruby nombrearchivo.rb para asegurar que se esta utilizando la gema adecuada

#TESTING CON MINITEST
class Calculator
    def sum(a,b)
        a*b
    end

    def restar(a,b)
        a-b
    end
end

require "minitest/autorun"

class TestCalculator < Minitest::Test
    def setup
        @calc = Calculator.new 
    end

    def test_sum_positives
        result = @calc.sum(1,3)
        assert_equal result, 4
        
    end

    def test_sum_negative
        result = @calc.sum(-1,-3)
        assert_equal result, -4
        
    end
end