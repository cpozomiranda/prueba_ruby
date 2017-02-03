def menu_inicio
	puts "\n\nIngrese una opcion"
	puts "1)Generar archivo con promedio de notas"
	puts "2)Inasistencias totales"
	puts "3)Alumnos reprobados"
	puts "4)Salir"


opcion = gets.chomp.to_i
return opcion
end

cont = true 


while cont == true 

	case menu_inicio
	when 1

	print "Generando listado alumnos\n"
		file = File.open("notas.csv", "r") #abre el archivo
		read = file.readlines
		total = 0
		read.each do |elemento|
			array = elemento.split("\n")
			total = array[1].to_i + array[2].to_i + array[3].to_i +  array[4].to_i + array[5].to_i
		end 
		
		system("touch promedios.txt") 
		notas = File.open("promedios.txt", "a")
	
		print "Listado generado exitosamente\n"

	when 2

		file = File.open("notas.csv", "r") #abre el archivo
		read = file.readlines #devuelve un array donde cada elemento es una linea
		file.close 
		read.each do |elemento| #itera sobre cada elemnto de "read"
			array = elemento.split(",") #devuelve un array por cada elemento de "read"
			ina = 0
			array.each_with_index do |valor, index|
				if valor == " A" || valor == " A\n"
					ina = ina + valor.to_i
						print "El alumno #{array[0]} tiene #{ina} inasistencias."
				else
					
				end
				
			end
		end



	when 3
		
	when 4
		break
		continuar = false 
		
	when 5
		
	end
end
