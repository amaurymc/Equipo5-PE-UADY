#BÚSQUEDA BINARIA

#EL SIGUIENTE CÓDIGO... 

#1.- TOMA COMO INPUT UN ARREGLO.
#2.- ORDENA EL ARREGLO POR EL MÉTODO DE BURBUJA.
#3.- BUSCA EL VALOR A ENCONTRAR EN EL ARREGLO ORDENADO.
#4.- IMPRIME SI HA ENCONTRADO EL VALOR O SI NO EXISTE DENTRO DEL ARREGLO.

ay = [2,5,11,17,23,31,41,47,59,67,73,83,97,3,7,13,19,29,37,43,53,61,71,79,89] #ARREGLO ORIGINAL. (PUEDE ESTAR DESORDENADO)
ax = 67      #NÚMERO A BUSCAR EN EL ARREGLO. (PUEDE NO ESTAR)

def ordenacionBurbuja (oof, buscado)
a = oof.length
    loop do
        arreglado = false
        (a-1).times do |i|
            if oof[i] > oof[i+1]
                oof[i], oof[i+1] = oof[i+1], oof[i]
                arreglado = true
            end
        end

        break if not arreglado
    end

    p "arreglo ordenado: #{oof}"
    p busquedaBinaria(oof, buscado)
end

def busquedaBinaria (oof, buscado)
    bajo = 0
    alto = oof.length - 1

    while bajo <= alto
        medio = bajo + ((alto - bajo) / 2)

        if oof[medio] == buscado
            return "se encontro el valor en la posicion #{medio+1} del arreglo ordenado"
        elsif oof[medio] < buscado
            bajo = medio + 1
        else
            alto = medio - 1
        end

    end

    return "no se encontro valor en el arreglo"
end

p "arreglo desordenado: #{ay}"
ordenacionBurbuja(ay, ax)
