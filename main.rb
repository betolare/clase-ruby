#nombre_usuario="Luis"#se define variable sin el dato de esta#

#puts nombre_usuario #muestra en consola#

#edad=25
#puts edad+5

#puts 10.0/3

#puts 10.to_f/3.to_f #se transforma el dato a flotante#

#puts "Hola  " + nombre_usuario #se concatenan dos datos#

#puts "Hola #{nombre_usuario}, \"bienvenido\"" #interpolacion(#{}) ingresar datos a una cadena de texto# #\ es un caracter de escape imprime el caracter que lo sigue#

#puts "Hola  #{edad}, adulto" 

#puts "ingresa un numero"
#numero_uno=gets.chomp.to_f #el metodo chomp elimina el ultimo comando y to_f convierte el numero en flotante
#puts "ingresa otro numero"
#numero_dos=gets.chomp.to_f
#puts " El numero ingresado fue #{numero_uno}. Gracias"

#puts "La suma de estos numeros es #{numero_uno+numero_dos}"

#if numero_uno>numero_dos
#    puts "El numero uno es mayor que el numero dos"
#elsif numero_uno==numero_dos
 #   puts "Los numeros son iguales"
#else                                                 #la condicional if inicia en if y finaliza en end
 #  puts "El numero uno es menor que el numero dos"
#end

#puts "Ingresa tu calificacion"

#calificacion=gets.chomp.to_i

#case calificacion
#	when 5
#	puts "Excelente"
#	when 4
#   puts "Sobresaliente"
#  when 3
# puts "Aceptable"
   #when 2
 #   puts "Insuficiente"
#    when 1,0 
#    puts "Deficiente"

#else 
#	puts "Nota no valida"

#end
 #Arreglos en ruby

#frutas=['Manzana','Pera','Uva','Anon','Durazno']

#frutas.each do |fruta| # ciclo each recorre un arreglo
#puts fruta
#end

#puts frutas.sort.join(',  ') #el arreglo quedara ordenado y separado por el caracter definido

#puts frutas.include?('Durazno') # nos dice si un elemento esta en el arreglo

#(1..5).each do |numero| # se hace un recorrido segun el rango
#puts " El numero vale #{numero}"
#end

#ciclo while
#i=0
#while i<10
# puts "I vale #{i}"
# i=i+1	
#end

# ciclo do while

#begin
#	puts "i vale #{i}"
#	i=i+1
#end  while i<10

# ciclo times

#5.times do
#  puts "Hola"
#end

#5.upto(10) do|valor| # nos muestra los numeros de 5-10
#puts valor
#end

#10.downto(5) do |valor| # nos muestra los numeros de 10-5
#puts valor
#end


#hashes
#persona={"nombre"=>"Luis","edad"=>37}
#puts persona["edad"]

#persona.each do |clave,valor|
#puts "La clave es #{clave} y el valor es #{valor}"
#end

#persona={"nombre"=>"Luis","edad"=>37}
#puts persona.length #recorre el hashes y muestra la cantidad de posiciones

#puts persona.has_key?("estatura") # devuelve verdadero o falso si hay una llave dentro del hashes

#puts persona.keys # muestra si existen las llaves dentro del hashes

#persona={nombre: Luis, edad: 37}# con simbolos":" no se pueden editar pr proteccion
#puts persona[:nombre]

#metodo
def cuadrado(numero)
    return numero*numero
end
#puts "Ingresa un numero"
#mi_numero=gets.chomp.to_f #obtener el valor 
#puts "El cuadrado es #{cuadrado(mi_numero)}"

#def hola_personas(*personas)
#personas.each.do |persona|

#puts "Hola #{persona}"
#end
#end

#gente=['Jaime','Pedro','Maria']
#hola_personas('Jaime','Pedro','Maria','Santiago')
#El operador splat convierte todos los parametros que enviemos en un arreglo dentro del metodo

#def suma(num1:0, num2:0)
#  return num1+num2
#end
#puts suma(num2:5) #keyword argument me permite bautizar los parametros de tal modo que puedo llamarlos en cualquier orden para utilizarlos y tambien me permite inicializarlos y este valor inicial el metodo lo utiliza si no se envia un parametro
#puts suma(num2:5,num1:7)

class Persona
attr_accessor :nombre, :edad #definicion de variables

    def initialize(nombre,edad)

     self.nombre= nombre
     self.edad=edad

    end

    def saludar    #definicion de metodos
       puts "Hola" 
    end

end

class Alumno<Persona
 attr_accessor :codigo

  def estudiar
  puts "Estoy estudiando"
  end

  def saludar 
     super  #va a ejecutar el metodo #saludar de la clase padre 
     puts "Profe"
  end
end	
persona1=Persona.new("Luis",37) #definicion de objetos
persona2=Persona.new("Maria",26)

#persona1.nombre= "Luis"
#persona2.nombre= "Maria"

persona2.saludar
#puts "El nombre de la persona es #{persona2.nombre}, y su edad es #{persona2.edad} años"

alumno1=Alumno.new("Pepe",24)
puts "El alumno #{alumno1.nombre}"

alumno1.saludar