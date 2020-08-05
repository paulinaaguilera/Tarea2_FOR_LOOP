#TAREA 2 BIG DATA FOR-LOOP
#Paulina Andrea Aguilera Madrid

#borrar variables
rm(list=ls())

#Ejercicio 1:
#Las mp tienen los nombres de las personas a las cuales estan asociadas,
#realice una funcion que cuente cuantos ninos hay por cada una, y entregue una estadistica
#de cuantos ninos hay por mp.

listaDocumentos <- list(c("mp","Juan","Christofer"),c("of","av01","ampr"),c("of","av01","ante"),
                        c("of","av08","arme"),c("of","av02","ante"),c("of","av07","ampr"),
                        c("of","av03","dape"),c("of","av01","meca"),c("of","av02","dape"),
                        c("mp","Antonia"),c("mp","Christian","Mario"),
                        c("mp","Jose","Pedro","Antonela"),c("of","av05","meca"),
                        c("of","av04","dape"),c("of","av02","arme"))

contadormp <- 0


for(vectores in listaDocumentos){
  if(vectores[1]=="mp"){
    contadormp <- contadormp +1
    vectores <- vectores[-1]
    print(paste("Se cuenta con 1 mp con",length(vectores),"ninos"))
  }
}

#saber cual es el total de mp:
print(paste("En total, se cuenta con una cantidad de mp igual a",contadormp))


#####################################################################################
#Ejercicio 2
#Los oficios estan compuestos por el codigo al cual pertenecen, construya
#una funcion que almacene los codigos y las tematicas a las que estan asociadas

#borrar variables
rm(list=ls())

listaDocumentos <- list(c("mp","Juan","Christofer"),c("of","av01","ampr"),c("of","av01","ante"),
                        c("of","av08","arme"),c("of","av02","ante"),c("of","av07","ampr"),
                        c("of","av03","dape"),c("of","av01","meca"),c("of","av02","dape"),
                        c("mp","Antonia"),c("mp","Christian","Mario"),
                        c("mp","Jose","Pedro","Antonela"),c("of","av05","meca"),
                        c("of","av04","dape"),c("of","av02","arme"))


contadorof <- 0

for(vectores in listaDocumentos){
  if(vectores[1]=="of"){
    vectores <- vectores[-1]
    print(vectores)
  }
}

###################################################################################
#EJERCICIO 3
#Construya una funcion que actue de juez y retorne aprobada o reprobada
#para los diferentes oficios, y entregue la cantidad que hay de cada una
#ejemplo: Llegaron 10 oficios de los cuales: 7 son aprobados y 3 reprobados


#Condicion: Si algun oficio contiene antecedentes (ante), medidas cautelares (meca)
#y/o audiencia de revision de medidas (arme) el juez lo catalogara como reprobada,
# caso contrario, si no posee ninguna de las mencionadas entonces se aprueba.


#borrar variables
rm(list=ls())

listaDocumentos <- list(c("mp","Juan","Christofer"),c("of","av01","ampr"),c("of","av01","ante"),
                        c("of","av08","arme"),c("of","av02","ante"),c("of","av07","ampr"),
                        c("of","av03","dape"),c("of","av01","meca"),c("of","av02","dape"),
                        c("mp","Antonia"),c("mp","Christian","Mario"),
                        c("mp","Jose","Pedro","Antonela"),c("of","av05","meca"),
                        c("of","av04","dape"),c("of","av02","arme"))

contadorof <- 0
contadoraprobado <- 0
contadorreprobado <- 0

for (vectores in listaDocumentos){
  if(vectores[1]=="of"){
    contadorof <- contadorof +1
    nuevosvectores <- vectores[-1]
  if(nuevosvectores[2:3]=="ante"||nuevosvectores[2:3]=="meca"||nuevosvectores[2:3]=="arme"){
    contadorreprobado <- contadorreprobado +1
  }else if(nuevosvectores[2:3]=="dape"||nuevosvectores[2:3]=="ampr"){
    contadoraprobado <- contadoraprobado +1
   }
  }
}

print(paste("llegaron",contadorof,"oficios de los cuales:",contadorreprobado,"son reprobados", "y",contadoraprobado,"son aprobados"))


